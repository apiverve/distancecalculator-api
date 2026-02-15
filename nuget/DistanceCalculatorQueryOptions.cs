using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.DistanceCalculator
{
    /// <summary>
    /// Query options for the Distance Calculator API
    /// </summary>
    public class DistanceCalculatorQueryOptions
    {
        /// <summary>
        /// The latitude of the first location
        /// </summary>
        [JsonProperty("lat1")]
        public string Lat1 { get; set; }

        /// <summary>
        /// The longitude of the first location
        /// </summary>
        [JsonProperty("lon1")]
        public string Lon1 { get; set; }

        /// <summary>
        /// The latitude of the second location
        /// </summary>
        [JsonProperty("lat2")]
        public string Lat2 { get; set; }

        /// <summary>
        /// The longitude of the second location
        /// </summary>
        [JsonProperty("lon2")]
        public string Lon2 { get; set; }
    }
}
