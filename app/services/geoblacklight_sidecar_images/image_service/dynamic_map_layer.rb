# frozen_string_literal: true

module GeoblacklightSidecarImages
  class ImageService
    module DynamicMapLayer
      ##
      # Formats and returns a thumbnail url from an ESRI Dynamic Map Layer endpoint.
      # @param [SolrDocument]
      # @return [String] image url
      def self.image_url(document, _size)
        if document.viewer_endpoint.match?(/\d$/)
		  "#{document.viewer_endpoint}/thumbnail"
		else
		  "#{document.viewer_endpoint}/info/thumbnail"
		end
      end
    end
  end
end
