module MicrosoftOpenData
  class Client
    module Api

      # Returns the lists of containers or list of datasets within a specified container
      # @param container [String] Optional container name
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://ogdisdk.cloudapp.net/Developers
      # @example
      #   catalog('dc')

      def catalog(container=nil, options={})
        if container.nil?
          get("", options)
        else
          get("#{container}", options)
        end
      end
      
      # Returns all the data from a specific dataset
      # @param container [String] Container name
      # @param dataset [String] Dataset name
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://ogdisdk.cloudapp.net/Developers
      # @example
      #   query('dc', 'CrimeIncidents')
      
      def query(container, dataset, options={})
        get("#{container}/#{dataset}", options)
      end

    end
  end
end