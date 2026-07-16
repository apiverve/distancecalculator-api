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
        public double Lat1 { get; set; }

        /// <summary>
        /// The longitude of the first location
        /// </summary>
        [JsonProperty("lon1")]
        public double Lon1 { get; set; }

        /// <summary>
        /// The latitude of the second location
        /// </summary>
        [JsonProperty("lat2")]
        public double Lat2 { get; set; }

        /// <summary>
        /// The longitude of the second location
        /// </summary>
        [JsonProperty("lon2")]
        public double Lon2 { get; set; }
    }
}
