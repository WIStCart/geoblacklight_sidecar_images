# frozen_string_literal: true

module GeoblacklightSidecarImages
  class ImageService
    module DynamicMapLayer
      ##
      # Formats and returns a thumbnail url from an ESRI Dynamic Map Layer endpoint.
      # @param [SolrDocument]
      # @return [String] image url
      def self.image_url(document, _size)      
        
		# approach #1: change thumbnail link if url ends with a number
		#if document.viewer_endpoint.match?(/\d$/)
        #  "#{document.viewer_endpoint}/thumbnail"
        #else
        #  "#{document.viewer_endpoint}/info/thumbnail"
				
		# approach #2: always strip off trailing number if present, use same thumbnail link for everything
        endpoint = document.viewer_endpoint
        if endpoint.match?(/\d\/$/)
          endpoint = endpoint.chomp('/').chomp(/\d/)
        end
        "#{endpoint}/info/thumbnail"


		#https://dotmaps.wi.gov/arcgis/rest/services/agohub/DMV_SERVICE_CENTER/MapServer/info/thumbnail
		#https://dotmaps.wi.gov/arcgis/rest/services/agohub/DMV_SERVICE_CENTER/MapServer/0/thumbnail
			
		#https://services5.arcgis.com/Ul9AyFFeFTjf08DW/ArcGIS/rest/services/PLSS_Townships/FeatureServer/info/thumbnail
		#https://services5.arcgis.com/Ul9AyFFeFTjf08DW/arcgis/rest/services/PLSS_Townships/FeatureServer/0 = no thumbnail option
        #https://dnrmaps.wi.gov/arcgis_image/rest/services/DW_Imagery/EN_Image_Basemap_Latest_Leaf_Off/ImageServer/info/thumbnail
		
		#https://dnrmaps.wi.gov/arcgis/rest/services/LF_DML/LF_DNR_BOAT_BoatAccess_WTM_Ext/MapServer/
	  end
    end
  end
end
