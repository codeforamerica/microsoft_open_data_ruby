module MicrosoftOpenData
  class Client
    module Api

      def catalog(container=nil, options={})
        if container.nil?
          get("", options)
        else
          get("#{container}", options)
        end
      end

    end
  end
end