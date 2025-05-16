import PopupWindow from "../../common/PopupWindow";
import DarkModeQS from "./buttons/DarkModeQS";
import ColorPickerQS from "./buttons/ColorPickerQS";
import ScreenshotQS from "./buttons/ScreenshotQS";
import DontDisturbQS from "./buttons/DontDisturbQS";
import RecordQS from "./buttons/RecordQS";
import MicQS from "./buttons/MicQS";
import BrightnessBox from "./BrightnessBox";
import MediaPlayers from "./MediaPlayer";
import VolumeBox from "./VolumeBox";
import { FlowBox } from "../../common/FlowBox";
import { Astal, Gtk, App, Gdk } from "astal/gtk4";
import { bash } from "../../lib/utils";
import { WINDOW_NAME as POWERMENU_WINDOW } from "../Powermenu/PowerMenu";
import { bind, Binding, GObject, Variable } from "astal";
// import options from "../../options";
import AstalBattery from "gi://AstalBattery";
import { toggleWallpaperPicker } from "../Wallpaperpicker/WallpaperPicker";
import AstalNetwork from "gi://AstalNetwork";
import AstalBluetooth from "gi://AstalBluetooth";
import BatteryPage from "./pages/BatteryPage";
import SpeakerPage from "./pages/SpeakerPage";
import WifiPage from "./pages/WifiPage";
import BluetoothPage from "./pages/BluetoothPage";
import Cava from "./Cava";

export const WINDOW_NAME = "quicksettings";
export const qsPage = Variable("main");
const defaultPosition = {
  position: "top",
  start: ["clock", "systray"],
  center: ["notification"],
  end: ["battery", "power"]
};

// 保留 layout 常量的计算逻辑
const layout = Variable.derive(
  [
    Variable(defaultPosition.position),
    Variable(defaultPosition.start),
    Variable(defaultPosition.center),
    Variable(defaultPosition.end)
  ],
  (pos, start, center, end) => {
    if (start.includes("notification")) return `${pos}_left`;
    if (center.includes("notification")) return `${pos}_center`;
    if (end.includes("notification")) return `${pos}_right`;

    return `${pos}_center`;
  },
);


function QSButtons() {
  return (
    <FlowBox
      maxChildrenPerLine={2}
      activateOnSingleClick={false}
      homogeneous
      rowSpacing={6}
      columnSpacing={6}
    >
      {/* <DarkModeQS /> */}
      {/* <ColorPickerQS /> */}
      {/* <ScreenshotQS /> */}
      <MicQS />
      <DontDisturbQS />
      {/* <RecordQS /> */}
    </FlowBox>
  );
}
function QSButtons_child() {
  return (
    <FlowBox
      maxChildrenPerLine={4}
      activateOnSingleClick={false}
      homogeneous
      rowSpacing={6}
      columnSpacing={6}
    >
      <DarkModeQS />
      <ColorPickerQS />
      <ScreenshotQS />
      {/* <MicQS /> */}
      {/* <DontDisturbQS /> */}
      <RecordQS />
    </FlowBox>
  )
}

function Header() {
  const battery = AstalBattery.get_default();

  return (
    <box hexpand={false} cssClasses={["header"]} spacing={6}>
      <label
        useMarkup={true}
        label={"<b> ControlCenter</b>"}
        hexpand
        xalign={0}
      />
      {/* <image */}
      {/*   iconName={"org.gnome.Settings-symbolic"} */}
      {/*   hexpand */}
      {/*   halign={Gtk.Align.START} */}
      {/* /> */}
      <button
        onClicked={() => {
          App.toggle_window(WINDOW_NAME);
          toggleWallpaperPicker();
        }}
        iconName={"preferences-desktop-wallpaper-symbolic"}
      />
      <button
        cssClasses={["battery"]}
        onClicked={() => {
          qsPage.set("battery");
        }}
      >
        <box spacing={2}>
          <image
            iconName={bind(battery, "batteryIconName")}
            iconSize={Gtk.IconSize.NORMAL}
            cssClasses={["icon"]}
          />
          <label
            label={bind(battery, "percentage").as(
              (p) => `${Math.floor(p * 100)}%`,
            )}
          />
        </box>
      </button>
      <button
        cssClasses={["settings"]}
        onClicked={() => {
          bash(`better-control`)
          App.toggle_window(WINDOW_NAME)
        }}
      >
        <image
          iconName={"system-settings-symbolic"}
          iconSize={Gtk.IconSize.NORMAL}
        />
      </button>
    </box>
  );
}

function ArrowButton<T extends GObject.Object>({
  icon,
  title,
  subtitle,
  onClicked,
  onArrowClicked,
  connection: [gobject, property],
}: {
  icon: string | Binding<string>;
  title: string;
  subtitle: string | Binding<string>;
  onClicked: () => void;
  onArrowClicked: () => void;
  connection: [T, keyof T];
}) {
  return (
    <box
      overflow={Gtk.Overflow.HIDDEN}
      cssClasses={bind(gobject, property).as((p) => {
        const classes = ["arrow-button"];
        p && classes.push("active");
        return classes;
      })}
    >
      <button onClicked={onClicked}>
        <box halign={Gtk.Align.START} cssClasses={["first-button"]} spacing={6}>
          <image iconName={icon} iconSize={Gtk.IconSize.LARGE} />
          <box vertical hexpand>
            <label xalign={0} label={title} cssClasses={["title"]} />
            <label xalign={0} label={subtitle} cssClasses={["subtitle"]} />
          </box>
        </box>
      </button>
      <button iconName={"go-next-symbolic"} cssClasses={["next-page"]} onClicked={onArrowClicked} />
    </box>
  );
}

function WifiArrowButton() {
  const wifi = AstalNetwork.get_default().wifi;
  const wifiSsid = Variable.derive(
    [bind(wifi, "state"), bind(wifi, "ssid")],
    (state, ssid) => {
      return state == AstalNetwork.DeviceState.ACTIVATED
        ? ssid
        : AstalNetwork.device_state_to_string();
    },
  );

  return (
    <ArrowButton
      icon={bind(wifi, "iconName")}
      title="Wi-Fi"
      subtitle={wifiSsid()}
      onClicked={() => wifi.set_enabled(!wifi.get_enabled())}
      onArrowClicked={() => {
        wifi.scan();
        qsPage.set("wifi");
      }}
      connection={[wifi, "enabled"]}
    />
  );
}

function WifiBluetooth() {
  const bluetooth = AstalBluetooth.get_default();
  const btAdapter = bluetooth.adapter;
  const deviceConnected = Variable.derive(
    [bind(bluetooth, "devices"), bind(bluetooth, "isConnected")],
    (d, _) => {
      for (const device of d) {
        if (device.connected) return device.name;
      }
      return "No device";
    },
  );
  const wifi = AstalNetwork.get_default().wifi;

  return (
    <box
      homogeneous
      spacing={6}
      onDestroy={() => {
        deviceConnected.drop();
      }}
    >
      {!!wifi && <WifiArrowButton />}
      <ArrowButton
        icon={bind(btAdapter, "powered").as(
          (p) => `bluetooth-${p ? "" : "disabled-"}symbolic`,
        )}
        title="Bluetooth"
        subtitle={deviceConnected()}
        onClicked={() => bluetooth.toggle()}
        // onArrowClicked={() => console.log("Will add bt page later")}
        onArrowClicked={() => {
          qsPage.set("bluetooth");
        }}
        connection={[btAdapter, "powered"]}
      />
    </box>
  );
}

function MainPage() {
  return (
    <box cssClasses={["qs-page"]} name={"main"} vertical spacing={6}>
      <Header />
      <Gtk.Separator />
      <WifiBluetooth />
      <QSButtons />
      <QSButtons_child />
      <BrightnessBox />
      <VolumeBox />
      {/* <Gtk.Separator /> */}
      <MediaPlayers />
      {/* <Cava /> */}
    </box>
  );
}

function QSWindow(_gdkmonitor: Gdk.Monitor) {
  return (
    <PopupWindow
      name={WINDOW_NAME}
      // layer={Astal.Layer.BOTTOM}
      // layout={layout.get()}
      // animation="slide top"
      anchor={Astal.WindowAnchor.TOP | Astal.WindowAnchor.RIGHT}
      // marginTop={25}
      onDestroy={() => layout.drop()}
    >
      <box
        cssClasses={["qs-container"]}
        hexpand={false}
        vexpand={false}
        vertical
      >
        <stack
          visibleChildName={qsPage()}
          transitionType={Gtk.StackTransitionType.SLIDE_LEFT_RIGHT}
        >
          <MainPage />
          <BatteryPage />
          <SpeakerPage />
          <WifiPage />
          <BluetoothPage />
        </stack>
      </box>
    </PopupWindow>
  );
}

export default function (gdkmonitor: Gdk.Monitor) {
  QSWindow(gdkmonitor);

  App.connect("window-toggled", (_, win) => {
    if (win.name == WINDOW_NAME && !win.visible) {
      qsPage.set("main");
    }
  });

  layout.subscribe(() => {
    App.remove_window(App.get_window(WINDOW_NAME)!);
    QSWindow(gdkmonitor);
  });
}
