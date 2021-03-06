# frozen_string_literal: true

module Milight
  module V6
    class All
      def initialize(command)
        @command = command
      end

      # Switch the lights on.
      def on
        @command.on(0)

        self
      end

      # Switch the lights off.
      def off
        @command.off(0)

        self
      end

      # Enable night light mode.
      def night_light
        @command.night_light(0)

        self
      end

      # Set brightness, value: 0% to 100%
      def brightness(value)
        @command.brightness(0, value)

        self
      end

      # Set color temperature, value: 0 = 2700K, 100 = 6500K.
      def temperature(value)
        @command.temperature(0, value)

        self
      end

      # Set color temperature to warm light (2700K).
      def warm_light
        @command.temperature(0, 0)

        self
      end

      # Set color temperature to white (cool) light (6500K).
      def white_light
        @command.temperature(0, 100)

        self
      end

      # Set the hue, value: 0 to 255 (red).
      # See Milight::V6::Color for predefined colors.
      def hue(value)
        @command.hue(0, value)

        self
      end

      # Set the saturation, value: 0% to 100%.
      def saturation(value)
        @command.saturation(0, value)

        self
      end

      # Wait before continuing to next command.
      def wait(seconds)
        sleep(seconds)

        self
      end
    end
  end
end
