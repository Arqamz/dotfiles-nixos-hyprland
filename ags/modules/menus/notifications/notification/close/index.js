export const CloseButton = (notif, notifs) => {
  return Widget.Button({
    class_name: "close-notification-button menu",
    on_primary_click: () => {
      notifs.CloseNotification(notif.id);
    },
    child: Widget.Label({
      label: "󰅜",
      hpack: "center",
    }),
  });
};
