module Rubotnik
  class PersistentMenu
    def self.enable
      # Create persistent menu
      # TODO: Intoduce nesting for UI elements examples
      Facebook::Messenger::Profile.set({
        persistent_menu: [
          {
            locale: 'default',
            composer_input_disabled: true,
            call_to_actions: [
              {
                type: 'nested',
                title: 'Sample UI elements',
                call_to_actions: [
                  {
                    title: "Generic Template",
                    type: 'postback',
                    payload: 'CAROUSEL'
                  },
                  {
                    title: 'Button Template',
                    type: 'postback',
                    payload: 'BUTTON_TEMPLATE'
                  }
                ]
              },
              {
                type: 'postback',
                title: 'Location lookup',
                payload: 'LOCATION'
              },
              {
                type: 'postback',
                title: 'Sample questionnaire',
                payload: 'QUESTIONNAIRE'
              }
            ]
          }
        ]
        }, access_token: ENV['ACCESS_TOKEN'])
    end
  end
end
