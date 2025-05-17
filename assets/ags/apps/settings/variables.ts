// by koeqaife ;)

export let current_window;
export function set_current_window(value: any) {
    current_window = value;
}

export const current_tab = Variable("");
export const saved_networks = Variable<string[]>([]);

const _saved_networks = async () => {
    const _saved = await Utils.execAsync(`${App.configDir}/scripts/network.sh --saved`);
    saved_networks.setValue(_saved.split("\n"));
};

Utils.interval(10000, () => {
    if (current_tab.value == "network" && current_window?.visible) {
        _saved_networks().catch(print);
    }
});

current_tab.connect("changed", () => {
    if (current_tab.value == "network") {
        _saved_networks().catch(print);
    }
});
