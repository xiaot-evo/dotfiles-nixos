import { timeout, Variable } from "astal";
import { bind } from "astal";
import { App, Gtk } from "astal/gtk4";
import AstalApps from "gi://AstalApps";
import AstalMpris from "gi://AstalMpris";
import Pango from "gi://Pango";

function MediaPlayer({ player }) {
  if (!player) {
    return <box />;
  }
  const title = bind(player, "title").as((t) => t || "Unknown Track");
  const artist = bind(player, "artist").as((a) => a || "Unknown Artist");
  const coverArt = bind(player, "coverArt");
  const playIcon = bind(player, "playbackStatus").as((s) =>
    s === AstalMpris.PlaybackStatus.PLAYING
      ? "media-playback-pause-symbolic"
      : "media-playback-start-symbolic",
  );
  function format_timecode(timecode: number) {
    timecode = Math.round(timecode);
    const seconds = timecode % 60;
    timecode = (timecode - seconds) / 60;
    const minutes = timecode % 60;
    timecode = (timecode - minutes) / 60;
    const hours = timecode;

    if (hours > 0) {
      return `${hours}:${minutes.toString().padStart(2, "0")}:${seconds.toString().padStart(2, "0")}`;
    } else {
      return `${minutes}:${seconds.toString().padStart(2, "0")}`;
    }
  }
  return (
    <box cssClasses={["media-player"]} hexpand>
      {/* 整体容器 */}
      {/* 主要内容 */}
      <box hexpand>
        {/* 左侧：封面图片 */}
        <image
          overflow={Gtk.Overflow.HIDDEN}
          cssClasses={["cover"]}
          file={coverArt}
          valign={Gtk.Align.CENTER}
        />

        {/* 右侧：信息和控制按钮（垂直排列） */}
        <box vertical hexpand>
          {/* 信息部分 */}
          <box vertical cssClasses={["media-font"]}>
            <label
              ellipsize={Pango.EllipsizeMode.END}
              halign={Gtk.Align.START}
              cssClasses={["tilte"]}
              label={title}
              maxWidthChars={20}
            />
            <label
              halign={Gtk.Align.START}
              ellipsize={Pango.EllipsizeMode.END}
              maxWidthChars={20}
              cssClasses={["artist"]}
              label={artist}
            />
          </box>
          <box cssClasses={['progress_container']}
            vexpand>
            {bind(player, 'length').as(length => (
              <levelbar
                cssClasses={['progress']}
                heightRequest={10}
                maxValue={length}
                value={bind(player, 'position')}
                hexpand={true}
              />
            ))}
          </box>

          {/* 控制按钮部分 */}
          <box spacing={8} halign={Gtk.Align.CENTER} margin_top={4}>
            {bind(player, 'position').as(position => (
              <label
                cssClasses={["labelSmall"]}
                valign={Gtk.Align.CENTER}
                halign={Gtk.Align.START}
                label={format_timecode(position)}
                margin_end={30}
              />
            ))}
            <button
              valign={Gtk.Align.CENTER}
              onClicked={() => player.previous()}
              visible={bind(player, "canGoPrevious")}
              cssClasses={["next-icon"]}
            >
              <image iconName="media-seek-backward-symbolic" pixelSize={25} />
            </button>
            <button
              valign={Gtk.Align.CENTER}
              cssClasses={["play-icon"]}
              onClicked={() => player.play_pause()}
              visible={bind(player, "canControl")}
            >
              <image iconName={playIcon} pixelSize={25} />
            </button>
            <button
              valign={Gtk.Align.CENTER}
              onClicked={() => player.next()}
              visible={bind(player, "canGoNext")}
              cssClasses={["next-icon"]}
            >
              <image iconName="media-seek-forward-symbolic" pixelSize={25} />
            </button>
            {bind(player, 'length').as(length => (
              <label
                valign={Gtk.Align.CENTER}
                halign={Gtk.Align.END}
                cssClasses={["labelSmall"]}
                label={format_timecode(length)}
                margin_start={30}
              />
            ))}
          </box>
        </box>
      </box>

      <image
        halign={Gtk.Align.END}
        valign={Gtk.Align.START}
        iconName="emblem-music-symbolic"
        pixelSize={15}
        margin_end={10}
        margin_top={4}
      />
    </box>
  );
}

export default function MediaPlayers() {
  const mpris = AstalMpris.get_default();
  return (
    <box cssClasses={["mediaPlayersContainer"]} hexpand={false}>
      {bind(mpris, "players").as((players) => (
        <MediaPlayer player={players[0]} />
      ))}
    </box>
  );
}
