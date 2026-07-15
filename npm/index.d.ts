declare module '@apiverve/distancecalculator' {
  export interface distancecalculatorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface distancecalculatorResponse {
    status: string;
    error: string | null;
    data: DistanceCalculatorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface DistanceCalculatorData {
      distanceMiles:      number | null;
      distanceKM:         number | null;
      location1:          Location;
      location2:          Location;
      bearing:            number | null;
      direction:          null | string;
      estimatedDriveTime: null | string;
  }
  
  interface Location {
      latitude:  null | string;
      longitude: null | string;
      city:      null | string;
      state:     null | string;
  }

  export default class distancecalculatorWrapper {
    constructor(options: distancecalculatorOptions);

    execute(callback: (error: any, data: distancecalculatorResponse | null) => void): Promise<distancecalculatorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: distancecalculatorResponse | null) => void): Promise<distancecalculatorResponse>;
    execute(query?: Record<string, any>): Promise<distancecalculatorResponse>;
  }
}
