part of mapsengine_v1_api;

/** Acquisition time represents acquired time of a raster. */
class AcquisitionTime {

  /** The end time if acquisition time is a range. The value is an RFC 3339 formatted date-time value (1970-01-01T00:00:00Z). */
  core.String end;

  /** The precision of acquisition time. */
  core.String precision;

  /** The acquisition time, or start time if acquisition time is a range. The value is an RFC 3339 formatted date-time value (1970-01-01T00:00:00Z). */
  core.String start;

  /** Create new AcquisitionTime from JSON data */
  AcquisitionTime.fromJson(core.Map json) {
    if (json.containsKey("end")) {
      end = json["end"];
    }
    if (json.containsKey("precision")) {
      precision = json["precision"];
    }
    if (json.containsKey("start")) {
      start = json["start"];
    }
  }

  /** Create JSON Object for AcquisitionTime */
  core.Map toJson() {
    var output = new core.Map();

    if (end != null) {
      output["end"] = end;
    }
    if (precision != null) {
      output["precision"] = precision;
    }
    if (start != null) {
      output["start"] = start;
    }

    return output;
  }

  /** Return String representation of AcquisitionTime */
  core.String toString() => JSON.encode(this.toJson());

}

/** An asset is any Google Maps Engine resource that has a globally unique ID. Assets include maps, layers, vector tables, raster collections, and rasters. Projects and features are not considered assets.

More detailed information about an asset can be obtained by querying the asset's particular endpoint. */
class Asset {

  /** A rectangular bounding box which contains all of the data in this asset. The numbers represent latitude and longitude in decimal degrees. */
  core.List<core.num> bbox;

  /** The creation time of this asset. The value is an RFC 3339-formatted date-time value (for example, 1970-01-01T00:00:00Z). */
  core.String creationTime;

  /** The asset's description. */
  core.String description;

  /** The asset's globally unique ID. */
  core.String id;

  /** The last modified time of this asset. The value is an RFC 3339-formatted date-time value (for example, 1970-01-01T00:00:00Z). */
  core.String lastModifiedTime;

  /** The asset's name. */
  core.String name;

  /** The ID of the project to which the asset belongs. */
  core.String projectId;

  /** The URL to query to retrieve the asset's complete object. The assets endpoint only returns high-level information about a resource. */
  core.String resource;

  /** An array of text strings, with each string representing a tag. More information about tags can be found in the Tagging data article of the Maps Engine help center. */
  core.List<core.String> tags;

  /** The type of asset. One of raster, rasterCollection, table, map, or layer. */
  core.String type;

  /** Create new Asset from JSON data */
  Asset.fromJson(core.Map json) {
    if (json.containsKey("bbox")) {
      bbox = json["bbox"].toList();
    }
    if (json.containsKey("creationTime")) {
      creationTime = json["creationTime"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("lastModifiedTime")) {
      lastModifiedTime = json["lastModifiedTime"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("projectId")) {
      projectId = json["projectId"];
    }
    if (json.containsKey("resource")) {
      resource = json["resource"];
    }
    if (json.containsKey("tags")) {
      tags = json["tags"].toList();
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Asset */
  core.Map toJson() {
    var output = new core.Map();

    if (bbox != null) {
      output["bbox"] = bbox.toList();
    }
    if (creationTime != null) {
      output["creationTime"] = creationTime;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (lastModifiedTime != null) {
      output["lastModifiedTime"] = lastModifiedTime;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (projectId != null) {
      output["projectId"] = projectId;
    }
    if (resource != null) {
      output["resource"] = resource;
    }
    if (tags != null) {
      output["tags"] = tags.toList();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Asset */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response returned by a call to resources.List. */
class AssetsListResponse {

  /** Assets returned. */
  core.List<Asset> assets;

  /** Next page token. */
  core.String nextPageToken;

  /** Create new AssetsListResponse from JSON data */
  AssetsListResponse.fromJson(core.Map json) {
    if (json.containsKey("assets")) {
      assets = json["assets"].map((assetsItem) => new Asset.fromJson(assetsItem)).toList();
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for AssetsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (assets != null) {
      output["assets"] = assets.map((assetsItem) => assetsItem.toJson()).toList();
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of AssetsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Border in line style. Both color and width are required. */
class Border {

  /** Color of the border. */
  core.String color;

  /** Opacity of the border. */
  core.num opacity;

  /** Width of the border, in pixels. */
  core.num width;

  /** Create new Border from JSON data */
  Border.fromJson(core.Map json) {
    if (json.containsKey("color")) {
      color = json["color"];
    }
    if (json.containsKey("opacity")) {
      opacity = json["opacity"];
    }
    if (json.containsKey("width")) {
      width = json["width"];
    }
  }

  /** Create JSON Object for Border */
  core.Map toJson() {
    var output = new core.Map();

    if (color != null) {
      output["color"] = color;
    }
    if (opacity != null) {
      output["opacity"] = opacity;
    }
    if (width != null) {
      output["width"] = width;
    }

    return output;
  }

  /** Return String representation of Border */
  core.String toString() => JSON.encode(this.toJson());

}

/** Basic color used in styling. */
class Color {

  /** The CSS style color, can be in format of "red" or "#7733EE". */
  core.String color;

  /** Opacity ranges from 0 to 1, inclusive. If not provided, default to 1. */
  core.num opacity;

  /** Create new Color from JSON data */
  Color.fromJson(core.Map json) {
    if (json.containsKey("color")) {
      color = json["color"];
    }
    if (json.containsKey("opacity")) {
      opacity = json["opacity"];
    }
  }

  /** Create JSON Object for Color */
  core.Map toJson() {
    var output = new core.Map();

    if (color != null) {
      output["color"] = color;
    }
    if (opacity != null) {
      output["opacity"] = opacity;
    }

    return output;
  }

  /** Return String representation of Color */
  core.String toString() => JSON.encode(this.toJson());

}

class Datasource {

  /** The ID of a datasource. */
  core.String id;

  /** Create new Datasource from JSON data */
  Datasource.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
  }

  /** Create JSON Object for Datasource */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }

    return output;
  }

  /** Return String representation of Datasource */
  core.String toString() => JSON.encode(this.toJson());

}

/** A display rule of the vector style. */
class DisplayRule {

  /** This display rule will only be applied to features that match all of the filters here. If filters is empty, then the rule applies to all features. */
  core.List<Filter> filters;

  /** Style applied to lines. Required for LineString Geometry. */
  LineStyle lineOptions;

  /** Display rule name. Name is not unique and cannot be used for identification purpose. */
  core.String name;

  /** Style applied to points. Required for Point Geometry. */
  PointStyle pointOptions;

  /** Style applied to polygons. Required for Polygon Geometry. */
  PolygonStyle polygonOptions;

  /** The zoom levels that this display rule apply. */
  ZoomLevels zoomLevels;

  /** Create new DisplayRule from JSON data */
  DisplayRule.fromJson(core.Map json) {
    if (json.containsKey("filters")) {
      filters = json["filters"].map((filtersItem) => new Filter.fromJson(filtersItem)).toList();
    }
    if (json.containsKey("lineOptions")) {
      lineOptions = new LineStyle.fromJson(json["lineOptions"]);
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("pointOptions")) {
      pointOptions = new PointStyle.fromJson(json["pointOptions"]);
    }
    if (json.containsKey("polygonOptions")) {
      polygonOptions = new PolygonStyle.fromJson(json["polygonOptions"]);
    }
    if (json.containsKey("zoomLevels")) {
      zoomLevels = new ZoomLevels.fromJson(json["zoomLevels"]);
    }
  }

  /** Create JSON Object for DisplayRule */
  core.Map toJson() {
    var output = new core.Map();

    if (filters != null) {
      output["filters"] = filters.map((filtersItem) => filtersItem.toJson()).toList();
    }
    if (lineOptions != null) {
      output["lineOptions"] = lineOptions.toJson();
    }
    if (name != null) {
      output["name"] = name;
    }
    if (pointOptions != null) {
      output["pointOptions"] = pointOptions.toJson();
    }
    if (polygonOptions != null) {
      output["polygonOptions"] = polygonOptions.toJson();
    }
    if (zoomLevels != null) {
      output["zoomLevels"] = zoomLevels.toJson();
    }

    return output;
  }

  /** Return String representation of DisplayRule */
  core.String toString() => JSON.encode(this.toJson());

}

/** A feature within a table. */
class Feature {

  /** The geometry member of this Feature. */
  GeoJsonGeometry geometry;

  /** Key/value pairs of this Feature. */
  GeoJsonProperties properties;

  /** Identifies this object as a feature. */
  core.String type;

  /** Create new Feature from JSON data */
  Feature.fromJson(core.Map json) {
    if (json.containsKey("geometry")) {
      geometry = new GeoJsonGeometry.fromJson(json["geometry"]);
    }
    if (json.containsKey("properties")) {
      properties = new GeoJsonProperties.fromJson(json["properties"]);
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Feature */
  core.Map toJson() {
    var output = new core.Map();

    if (geometry != null) {
      output["geometry"] = geometry.toJson();
    }
    if (properties != null) {
      output["properties"] = properties.toJson();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Feature */
  core.String toString() => JSON.encode(this.toJson());

}

/** A feature info contains information about individual feature. */
class FeatureInfo {

  /** HTML template of the info window. If not provided, a default template with all attributes will be generated. */
  core.String content;

  /** Create new FeatureInfo from JSON data */
  FeatureInfo.fromJson(core.Map json) {
    if (json.containsKey("content")) {
      content = json["content"];
    }
  }

  /** Create JSON Object for FeatureInfo */
  core.Map toJson() {
    var output = new core.Map();

    if (content != null) {
      output["content"] = content;
    }

    return output;
  }

  /** Return String representation of FeatureInfo */
  core.String toString() => JSON.encode(this.toJson());

}

/** The request sent to features.BatchDelete. */
class FeaturesBatchDeleteRequest {

  core.List<core.String> gx_ids;

  core.List<core.String> primaryKeys;

  /** Create new FeaturesBatchDeleteRequest from JSON data */
  FeaturesBatchDeleteRequest.fromJson(core.Map json) {
    if (json.containsKey("gx_ids")) {
      gx_ids = json["gx_ids"].toList();
    }
    if (json.containsKey("primaryKeys")) {
      primaryKeys = json["primaryKeys"].toList();
    }
  }

  /** Create JSON Object for FeaturesBatchDeleteRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (gx_ids != null) {
      output["gx_ids"] = gx_ids.toList();
    }
    if (primaryKeys != null) {
      output["primaryKeys"] = primaryKeys.toList();
    }

    return output;
  }

  /** Return String representation of FeaturesBatchDeleteRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The request sent to features.Insert. */
class FeaturesBatchInsertRequest {

  core.List<Feature> features;

  /** Create new FeaturesBatchInsertRequest from JSON data */
  FeaturesBatchInsertRequest.fromJson(core.Map json) {
    if (json.containsKey("features")) {
      features = json["features"].map((featuresItem) => new Feature.fromJson(featuresItem)).toList();
    }
  }

  /** Create JSON Object for FeaturesBatchInsertRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (features != null) {
      output["features"] = features.map((featuresItem) => featuresItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of FeaturesBatchInsertRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The request sent to features.BatchPatch. */
class FeaturesBatchPatchRequest {

  core.List<Feature> features;

  /** Create new FeaturesBatchPatchRequest from JSON data */
  FeaturesBatchPatchRequest.fromJson(core.Map json) {
    if (json.containsKey("features")) {
      features = json["features"].map((featuresItem) => new Feature.fromJson(featuresItem)).toList();
    }
  }

  /** Create JSON Object for FeaturesBatchPatchRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (features != null) {
      output["features"] = features.map((featuresItem) => featuresItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of FeaturesBatchPatchRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response returned by a call to features.List. */
class FeaturesListResponse {

  /** An indicator of the maximum rate at which queries may be made, if all queries were as expensive as this query. */
  core.num allowedQueriesPerSecond;

  /** Resources returned. */
  core.List<Feature> features;

  /** Next page token. */
  core.String nextPageToken;

  /** The feature schema. */
  Schema schema;

  core.String type;

  /** Create new FeaturesListResponse from JSON data */
  FeaturesListResponse.fromJson(core.Map json) {
    if (json.containsKey("allowedQueriesPerSecond")) {
      allowedQueriesPerSecond = json["allowedQueriesPerSecond"];
    }
    if (json.containsKey("features")) {
      features = json["features"].map((featuresItem) => new Feature.fromJson(featuresItem)).toList();
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("schema")) {
      schema = new Schema.fromJson(json["schema"]);
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for FeaturesListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (allowedQueriesPerSecond != null) {
      output["allowedQueriesPerSecond"] = allowedQueriesPerSecond;
    }
    if (features != null) {
      output["features"] = features.map((featuresItem) => featuresItem.toJson()).toList();
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (schema != null) {
      output["schema"] = schema.toJson();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of FeaturesListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** A single File, which is a component of an Asset. */
class File {

  /** The name of the file. */
  core.String filename;

  /** The size of the file in bytes. */
  core.int size;

  /** The upload status of the file. */
  core.String uploadStatus;

  /** Create new File from JSON data */
  File.fromJson(core.Map json) {
    if (json.containsKey("filename")) {
      filename = json["filename"];
    }
    if (json.containsKey("size")) {
      size = (json["size"] is core.String) ? core.int.parse(json["size"]) : json["size"];
    }
    if (json.containsKey("uploadStatus")) {
      uploadStatus = json["uploadStatus"];
    }
  }

  /** Create JSON Object for File */
  core.Map toJson() {
    var output = new core.Map();

    if (filename != null) {
      output["filename"] = filename;
    }
    if (size != null) {
      output["size"] = size;
    }
    if (uploadStatus != null) {
      output["uploadStatus"] = uploadStatus;
    }

    return output;
  }

  /** Return String representation of File */
  core.String toString() => JSON.encode(this.toJson());

}

/** Conditions for filtering features. */
class Filter {

  /** The column name to filter on. */
  core.String column;

  /** Operation used to evaluate the filter. */
  core.String operator;

  /** Value to be evaluated against attribute. */
  core.Object value;

  /** Create new Filter from JSON data */
  Filter.fromJson(core.Map json) {
    if (json.containsKey("column")) {
      column = json["column"];
    }
    if (json.containsKey("operator")) {
      operator = json["operator"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for Filter */
  core.Map toJson() {
    var output = new core.Map();

    if (column != null) {
      output["column"] = column;
    }
    if (operator != null) {
      output["operator"] = operator;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of Filter */
  core.String toString() => JSON.encode(this.toJson());

}

abstract class GeoJsonGeometry {

  /** Create new GeoJsonGeometry from JSON data */
  factory GeoJsonGeometry.fromJson(core.Map json) {
    switch(json["type"]) {
      case "GeometryCollection":
        return new GeoJsonGeometryCollection.fromJson(json);
      case "LineString":
        return new GeoJsonLineString.fromJson(json);
      case "MultiLineString":
        return new GeoJsonMultiLineString.fromJson(json);
      case "MultiPoint":
        return new GeoJsonMultiPoint.fromJson(json);
      case "MultiPolygon":
        return new GeoJsonMultiPolygon.fromJson(json);
      case "Point":
        return new GeoJsonPoint.fromJson(json);
      case "Polygon":
        return new GeoJsonPolygon.fromJson(json);
    }
  }

  /** Create JSON Object for GeoJsonGeometry */
  core.Map toJson();

  /** Return String representation of GeoJsonGeometry */
  core.String toString() => JSON.encode(this.toJson());

}

/** A heterogenous collection of GeoJsonGeometry objects. */
class GeoJsonGeometryCollection implements GeoJsonGeometry {

  /** An array of geometry objects. There must be at least 2 different types of geometries in the array. */
  core.List<GeoJsonGeometry> geometries;

  /** Identifies this object as a GeoJsonGeometryCollection. */
  core.String type;

  /** Create new GeoJsonGeometryCollection from JSON data */
  GeoJsonGeometryCollection.fromJson(core.Map json) {
    if (json.containsKey("geometries")) {
      geometries = json["geometries"].map((geometriesItem) => new GeoJsonGeometry.fromJson(geometriesItem)).toList();
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for GeoJsonGeometryCollection */
  core.Map toJson() {
    var output = new core.Map();

    if (geometries != null) {
      output["geometries"] = geometries.map((geometriesItem) => geometriesItem.toJson()).toList();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of GeoJsonGeometryCollection */
  core.String toString() => JSON.encode(this.toJson());

}

class GeoJsonLineString implements GeoJsonGeometry {

  /** An array of two or more positions, representing a line. */
  core.List<GeoJsonPosition> coordinates;

  /** Identifies this object as a GeoJsonLineString. */
  core.String type;

  /** Create new GeoJsonLineString from JSON data */
  GeoJsonLineString.fromJson(core.Map json) {
    if (json.containsKey("coordinates")) {
      coordinates = json["coordinates"].map((coordinatesItem) => new GeoJsonPosition.fromJson(coordinatesItem)).toList();
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for GeoJsonLineString */
  core.Map toJson() {
    var output = new core.Map();

    if (coordinates != null) {
      output["coordinates"] = coordinates.map((coordinatesItem) => coordinatesItem.toJson()).toList();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of GeoJsonLineString */
  core.String toString() => JSON.encode(this.toJson());

}

/** Multi Line String */
class GeoJsonMultiLineString implements GeoJsonGeometry {

  /** An array of at least two GeoJsonLineString coordinate arrays. */
  core.List<core.List<GeoJsonPosition>> coordinates;

  /** Identifies this object as a GeoJsonMultiLineString. */
  core.String type;

  /** Create new GeoJsonMultiLineString from JSON data */
  GeoJsonMultiLineString.fromJson(core.Map json) {
    if (json.containsKey("coordinates")) {
      coordinates = json["coordinates"].map((coordinatesItem) => coordinatesItem.map((coordinatesItem2) => new GeoJsonPosition.fromJson(coordinatesItem2)).toList()).toList();
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for GeoJsonMultiLineString */
  core.Map toJson() {
    var output = new core.Map();

    if (coordinates != null) {
      output["coordinates"] = coordinates.map((coordinatesItem) => coordinatesItem.map((coordinatesItem2) => coordinatesItem2.toJson()).toList()).toList();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of GeoJsonMultiLineString */
  core.String toString() => JSON.encode(this.toJson());

}

class GeoJsonMultiPoint implements GeoJsonGeometry {

  /** An array of at least two GeoJsonPoint coordinate arrays. */
  core.List<GeoJsonPosition> coordinates;

  /** Identifies this object as a GeoJsonMultiPoint. */
  core.String type;

  /** Create new GeoJsonMultiPoint from JSON data */
  GeoJsonMultiPoint.fromJson(core.Map json) {
    if (json.containsKey("coordinates")) {
      coordinates = json["coordinates"].map((coordinatesItem) => new GeoJsonPosition.fromJson(coordinatesItem)).toList();
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for GeoJsonMultiPoint */
  core.Map toJson() {
    var output = new core.Map();

    if (coordinates != null) {
      output["coordinates"] = coordinates.map((coordinatesItem) => coordinatesItem.toJson()).toList();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of GeoJsonMultiPoint */
  core.String toString() => JSON.encode(this.toJson());

}

class GeoJsonMultiPolygon implements GeoJsonGeometry {

  /** An array of at least two GeoJsonPolygon coordinate arrays. */
  core.List<core.List<core.List<GeoJsonPosition>>> coordinates;

  /** Identifies this object as a GeoJsonMultiPolygon. */
  core.String type;

  /** Create new GeoJsonMultiPolygon from JSON data */
  GeoJsonMultiPolygon.fromJson(core.Map json) {
    if (json.containsKey("coordinates")) {
      coordinates = json["coordinates"].map((coordinatesItem) => coordinatesItem.map((coordinatesItem2) => coordinatesItem2.map((coordinatesItem3) => new GeoJsonPosition.fromJson(coordinatesItem3)).toList()).toList()).toList();
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for GeoJsonMultiPolygon */
  core.Map toJson() {
    var output = new core.Map();

    if (coordinates != null) {
      output["coordinates"] = coordinates.map((coordinatesItem) => coordinatesItem.map((coordinatesItem2) => coordinatesItem2.map((coordinatesItem3) => coordinatesItem3.toJson()).toList()).toList()).toList();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of GeoJsonMultiPolygon */
  core.String toString() => JSON.encode(this.toJson());

}

class GeoJsonPoint implements GeoJsonGeometry {

  /** A single GeoJsonPosition, specifying the location of the point. */
  GeoJsonPosition coordinates;

  /** Identifies this object as a GeoJsonPoint. */
  core.String type;

  /** Create new GeoJsonPoint from JSON data */
  GeoJsonPoint.fromJson(core.Map json) {
    if (json.containsKey("coordinates")) {
      coordinates = new GeoJsonPosition.fromJson(json["coordinates"]);
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for GeoJsonPoint */
  core.Map toJson() {
    var output = new core.Map();

    if (coordinates != null) {
      output["coordinates"] = coordinates.toJson();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of GeoJsonPoint */
  core.String toString() => JSON.encode(this.toJson());

}

class GeoJsonPolygon implements GeoJsonGeometry {

  /** An array of LinearRings, each of which is an array of four or more GeoJsonPositions. The first and last coordinates in each LinearRing must be the same. For polygons with multiple rings, the first LinearRing is the external ring, with subsequent rings being interior rings (i.e. hole). All LinearRings must contain GeoJsonPositions in counter-clockwise order. */
  core.List<core.List<GeoJsonPosition>> coordinates;

  /** Identifies this object as a GeoJsonPolygon. */
  core.String type;

  /** Create new GeoJsonPolygon from JSON data */
  GeoJsonPolygon.fromJson(core.Map json) {
    if (json.containsKey("coordinates")) {
      coordinates = json["coordinates"].map((coordinatesItem) => coordinatesItem.map((coordinatesItem2) => new GeoJsonPosition.fromJson(coordinatesItem2)).toList()).toList();
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for GeoJsonPolygon */
  core.Map toJson() {
    var output = new core.Map();

    if (coordinates != null) {
      output["coordinates"] = coordinates.map((coordinatesItem) => coordinatesItem.map((coordinatesItem2) => coordinatesItem2.toJson()).toList()).toList();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of GeoJsonPolygon */
  core.String toString() => JSON.encode(this.toJson());

}

/** A position represents a geographical position as an array containing a longitude and a latitude, and optionally an altitude, in that order. All Geometry objects make use of positions to represent geometries as nested arrays. The structure of the array is governed by the type of the geometry. */
class GeoJsonPosition extends SchemaArray<core.num> {

  /** Create new GeoJsonPosition from JSON data */
  GeoJsonPosition.fromJson(core.List json) {
    innerList.addAll(json);
  }

  /** Create JSON Object for GeoJsonPosition */
  core.List toJson() {
    return innerList;
  }

  /** Return String representation of GeoJsonPosition */
  core.String toString() => JSON.encode(this.toJson());

}

/** The properties associated with a feature. */
class GeoJsonProperties extends SchemaAnyObject {

  /** Create new GeoJsonProperties from JSON data */
  GeoJsonProperties.fromJson(core.Map json) {
    innerMap.addAll(json);
  }

  /** Create JSON Object for GeoJsonProperties */
  core.Map toJson() {
    return innerMap;
  }

  /** Return String representation of GeoJsonProperties */
  core.String toString() => JSON.encode(this.toJson());

}

/** Style for icon, this is part of point style. */
class IconStyle {

  /** Custom icon id. */
  core.String id;

  /** Stock icon name. To use a stock icon, prefix it with 'gx_'. See Stock icon names for valid icon names. For example, to specify small_red, set name to 'gx_small_red'. */
  core.String name;

  /** Create new IconStyle from JSON data */
  IconStyle.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for IconStyle */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of IconStyle */
  core.String toString() => JSON.encode(this.toJson());

}

/** A geo-referenced raster. */
class Image {

  /** The acquisition time of this Raster. */
  AcquisitionTime acquisitionTime;

  /** The name of the attribution to be used for this Raster. */
  core.String attribution;

  /** A rectangular bounding box which contains all of the data in this Raster. The numbers represent latitude and longitude in decimal degrees. */
  core.List<core.num> bbox;

  /** The creation time of this raster. The value is an RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). */
  core.String creationTime;

  /** The description of this Raster, supplied by the author. */
  core.String description;

  /** The Map Editors access list to share this Raster with. */
  core.String draftAccessList;

  /** The files associated with this Raster. */
  core.List<File> files;

  /** A globally unique ID, used to refer to this Raster. */
  core.String id;

  /** The last modified time of this raster. The value is an RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). */
  core.String lastModifiedTime;

  /** The mask processing type of this Raster. */
  core.String maskType;

  /** The name of this Raster, supplied by the author. */
  core.String name;

  /** The processing status of this Raster. */
  core.String processingStatus;

  /** The ID of the project that this Raster is in. */
  core.String projectId;

  /** The type of this Raster. Always "image" today. */
  core.String rasterType;

  /** Tags of this Raster. */
  core.List<core.String> tags;

  /** Create new Image from JSON data */
  Image.fromJson(core.Map json) {
    if (json.containsKey("acquisitionTime")) {
      acquisitionTime = new AcquisitionTime.fromJson(json["acquisitionTime"]);
    }
    if (json.containsKey("attribution")) {
      attribution = json["attribution"];
    }
    if (json.containsKey("bbox")) {
      bbox = json["bbox"].toList();
    }
    if (json.containsKey("creationTime")) {
      creationTime = json["creationTime"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("draftAccessList")) {
      draftAccessList = json["draftAccessList"];
    }
    if (json.containsKey("files")) {
      files = json["files"].map((filesItem) => new File.fromJson(filesItem)).toList();
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("lastModifiedTime")) {
      lastModifiedTime = json["lastModifiedTime"];
    }
    if (json.containsKey("maskType")) {
      maskType = json["maskType"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("processingStatus")) {
      processingStatus = json["processingStatus"];
    }
    if (json.containsKey("projectId")) {
      projectId = json["projectId"];
    }
    if (json.containsKey("rasterType")) {
      rasterType = json["rasterType"];
    }
    if (json.containsKey("tags")) {
      tags = json["tags"].toList();
    }
  }

  /** Create JSON Object for Image */
  core.Map toJson() {
    var output = new core.Map();

    if (acquisitionTime != null) {
      output["acquisitionTime"] = acquisitionTime.toJson();
    }
    if (attribution != null) {
      output["attribution"] = attribution;
    }
    if (bbox != null) {
      output["bbox"] = bbox.toList();
    }
    if (creationTime != null) {
      output["creationTime"] = creationTime;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (draftAccessList != null) {
      output["draftAccessList"] = draftAccessList;
    }
    if (files != null) {
      output["files"] = files.map((filesItem) => filesItem.toJson()).toList();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (lastModifiedTime != null) {
      output["lastModifiedTime"] = lastModifiedTime;
    }
    if (maskType != null) {
      output["maskType"] = maskType;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (processingStatus != null) {
      output["processingStatus"] = processingStatus;
    }
    if (projectId != null) {
      output["projectId"] = projectId;
    }
    if (rasterType != null) {
      output["rasterType"] = rasterType;
    }
    if (tags != null) {
      output["tags"] = tags.toList();
    }

    return output;
  }

  /** Return String representation of Image */
  core.String toString() => JSON.encode(this.toJson());

}

/** Text label style. */
class LabelStyle {

  /** Color of the text. If not provided, default to black. */
  core.String color;

  /** The column value of the feature to be displayed. */
  core.String column;

  /** Font style of the label, defaults to 'normal'. */
  core.String fontStyle;

  /** Font weight of the label, defaults to 'normal'. */
  core.String fontWeight;

  /** Opacity of the text. */
  core.num opacity;

  /** Outline color of the text. */
  Color outline;

  /** Font size of the label, in pixels. 8 <= size <= 15. If not provided, a default size will be provided. */
  core.num size;

  /** Create new LabelStyle from JSON data */
  LabelStyle.fromJson(core.Map json) {
    if (json.containsKey("color")) {
      color = json["color"];
    }
    if (json.containsKey("column")) {
      column = json["column"];
    }
    if (json.containsKey("fontStyle")) {
      fontStyle = json["fontStyle"];
    }
    if (json.containsKey("fontWeight")) {
      fontWeight = json["fontWeight"];
    }
    if (json.containsKey("opacity")) {
      opacity = json["opacity"];
    }
    if (json.containsKey("outline")) {
      outline = new Color.fromJson(json["outline"]);
    }
    if (json.containsKey("size")) {
      size = json["size"];
    }
  }

  /** Create JSON Object for LabelStyle */
  core.Map toJson() {
    var output = new core.Map();

    if (color != null) {
      output["color"] = color;
    }
    if (column != null) {
      output["column"] = column;
    }
    if (fontStyle != null) {
      output["fontStyle"] = fontStyle;
    }
    if (fontWeight != null) {
      output["fontWeight"] = fontWeight;
    }
    if (opacity != null) {
      output["opacity"] = opacity;
    }
    if (outline != null) {
      output["outline"] = outline.toJson();
    }
    if (size != null) {
      output["size"] = size;
    }

    return output;
  }

  /** Return String representation of LabelStyle */
  core.String toString() => JSON.encode(this.toJson());

}

/** A Layer combines multiple datasources, with styling information, for presentation on a map. */
class Layer {

  /** A rectangular bounding box which contains all of the data in this Layer. The numbers represent latitude and longitude in decimal degrees. */
  core.List<core.num> bbox;

  /** The creation time of this layer. The value is an RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). */
  core.String creationTime;

  /** The type of the datasources used to build this Layer. */
  core.String datasourceType;

  /** An array of datasources used to build this Layer. If datasourceType is "image", then each element in this array is a reference to an Image or RasterCollection. If datasourceType is "table" then each element in this array is a reference to a Vector Table. */
  core.List<Datasource> datasources;

  /** The description of this Layer, supplied by the author. */
  core.String description;

  /** The name of an access list of the Map Editor type. The user on whose behalf the request is being sent must be an editor on that access list. Read About access lists in the Google Maps Engine help center for more information. */
  core.String draftAccessList;

  /** A globally unique ID, used to refer to this Layer. */
  core.String id;

  /** The last modified time of this layer. The value is an RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). */
  core.String lastModifiedTime;

  /** The name of this Layer, supplied by the author. */
  core.String name;

  /** The processing status of this layer. */
  core.String processingStatus;

  /** The ID of the project that this Layer is in. */
  core.String projectId;

  /** The access list to whom view permissions are granted. The value must be the name of a Maps Engine access list of the Map Viewer type, and the user must be a viewer on that list. Read About access lists in the Google Maps Engine help center for more information. */
  core.String publishedAccessList;

  /** The Styling information for a vector layer. */
  VectorStyle style;

  /** Tags of this Layer. */
  core.List<core.String> tags;

  /** Create new Layer from JSON data */
  Layer.fromJson(core.Map json) {
    if (json.containsKey("bbox")) {
      bbox = json["bbox"].toList();
    }
    if (json.containsKey("creationTime")) {
      creationTime = json["creationTime"];
    }
    if (json.containsKey("datasourceType")) {
      datasourceType = json["datasourceType"];
    }
    if (json.containsKey("datasources")) {
      datasources = json["datasources"].map((datasourcesItem) => new Datasource.fromJson(datasourcesItem)).toList();
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("draftAccessList")) {
      draftAccessList = json["draftAccessList"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("lastModifiedTime")) {
      lastModifiedTime = json["lastModifiedTime"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("processingStatus")) {
      processingStatus = json["processingStatus"];
    }
    if (json.containsKey("projectId")) {
      projectId = json["projectId"];
    }
    if (json.containsKey("publishedAccessList")) {
      publishedAccessList = json["publishedAccessList"];
    }
    if (json.containsKey("style")) {
      style = new VectorStyle.fromJson(json["style"]);
    }
    if (json.containsKey("tags")) {
      tags = json["tags"].toList();
    }
  }

  /** Create JSON Object for Layer */
  core.Map toJson() {
    var output = new core.Map();

    if (bbox != null) {
      output["bbox"] = bbox.toList();
    }
    if (creationTime != null) {
      output["creationTime"] = creationTime;
    }
    if (datasourceType != null) {
      output["datasourceType"] = datasourceType;
    }
    if (datasources != null) {
      output["datasources"] = datasources.map((datasourcesItem) => datasourcesItem.toJson()).toList();
    }
    if (description != null) {
      output["description"] = description;
    }
    if (draftAccessList != null) {
      output["draftAccessList"] = draftAccessList;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (lastModifiedTime != null) {
      output["lastModifiedTime"] = lastModifiedTime;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (processingStatus != null) {
      output["processingStatus"] = processingStatus;
    }
    if (projectId != null) {
      output["projectId"] = projectId;
    }
    if (publishedAccessList != null) {
      output["publishedAccessList"] = publishedAccessList;
    }
    if (style != null) {
      output["style"] = style.toJson();
    }
    if (tags != null) {
      output["tags"] = tags.toList();
    }

    return output;
  }

  /** Return String representation of Layer */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response returned by a call to layers.List. */
class LayersListResponse {

  /** Resources returned. */
  core.List<Layer> layers;

  /** Next page token. */
  core.String nextPageToken;

  /** Create new LayersListResponse from JSON data */
  LayersListResponse.fromJson(core.Map json) {
    if (json.containsKey("layers")) {
      layers = json["layers"].map((layersItem) => new Layer.fromJson(layersItem)).toList();
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for LayersListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (layers != null) {
      output["layers"] = layers.map((layersItem) => layersItem.toJson()).toList();
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of LayersListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Style for lines. */
class LineStyle {

  /** Border of the line. 0 < border.width <= 5. */
  Border border;

  /** Dash defines the pattern of the line, the values are pixel lengths of alternating dash and gap. If dash is not provided, then it means a solid line. Dash can contain up to 10 values and must contain even number of values. */
  core.List<core.num> dash;

  /** Label style for the line. */
  LabelStyle label;

  /** Stroke of the line. */
  LineStyleStroke stroke;

  /** Create new LineStyle from JSON data */
  LineStyle.fromJson(core.Map json) {
    if (json.containsKey("border")) {
      border = new Border.fromJson(json["border"]);
    }
    if (json.containsKey("dash")) {
      dash = json["dash"].toList();
    }
    if (json.containsKey("label")) {
      label = new LabelStyle.fromJson(json["label"]);
    }
    if (json.containsKey("stroke")) {
      stroke = new LineStyleStroke.fromJson(json["stroke"]);
    }
  }

  /** Create JSON Object for LineStyle */
  core.Map toJson() {
    var output = new core.Map();

    if (border != null) {
      output["border"] = border.toJson();
    }
    if (dash != null) {
      output["dash"] = dash.toList();
    }
    if (label != null) {
      output["label"] = label.toJson();
    }
    if (stroke != null) {
      output["stroke"] = stroke.toJson();
    }

    return output;
  }

  /** Return String representation of LineStyle */
  core.String toString() => JSON.encode(this.toJson());

}

/** Stroke of the line. */
class LineStyleStroke {

  /** Color of the line. */
  core.String color;

  /** Opacity of the line. */
  core.num opacity;

  /** Width of the line, in pixels. 0 <= width <= 10. If width is set to 0, the line will be invisible. */
  core.num width;

  /** Create new LineStyleStroke from JSON data */
  LineStyleStroke.fromJson(core.Map json) {
    if (json.containsKey("color")) {
      color = json["color"];
    }
    if (json.containsKey("opacity")) {
      opacity = json["opacity"];
    }
    if (json.containsKey("width")) {
      width = json["width"];
    }
  }

  /** Create JSON Object for LineStyleStroke */
  core.Map toJson() {
    var output = new core.Map();

    if (color != null) {
      output["color"] = color;
    }
    if (opacity != null) {
      output["opacity"] = opacity;
    }
    if (width != null) {
      output["width"] = width;
    }

    return output;
  }

  /** Return String representation of LineStyleStroke */
  core.String toString() => JSON.encode(this.toJson());

}

/** A Map is a collection of Layers, optionally contained within folders. */
class Map {

  /** A rectangular bounding box which contains all of the data in this Map. The numbers represent latitude and longitude in decimal degrees. */
  core.List<core.num> bbox;

  /** The contents of this Map. */
  core.List<MapItem> contents;

  /** The creation time of this map. The value is an RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). */
  core.String creationTime;

  /** An array of four numbers (west, south, east, north) which defines the rectangular bounding box of the default viewport. The numbers represent latitude and longitude in decimal degrees. */
  core.List<core.num> defaultViewport;

  /** The description of this Map, supplied by the author. */
  core.String description;

  /** The name of an access list of the Map Editor type. The user on whose behalf the request is being sent must be an editor on that access list. Read About access lists in the Google Maps Engine help center for more information. */
  core.String draftAccessList;

  /** A globally unique ID, used to refer to this Map. */
  core.String id;

  /** The last modified time of this map. The value is an RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). */
  core.String lastModifiedTime;

  /** The name of this Map, supplied by the author. */
  core.String name;

  /** The ID of the project that this Map is in. */
  core.String projectId;

  /** Tags of this Map. */
  core.List<core.String> tags;

  /** An array containing the available versions of this Map. Currently may only contain "published". */
  core.List<core.String> versions;

  /** Create new Map from JSON data */
  Map.fromJson(core.Map json) {
    if (json.containsKey("bbox")) {
      bbox = json["bbox"].toList();
    }
    if (json.containsKey("contents")) {
      contents = json["contents"].map((contentsItem) => new MapItem.fromJson(contentsItem)).toList();
    }
    if (json.containsKey("creationTime")) {
      creationTime = json["creationTime"];
    }
    if (json.containsKey("defaultViewport")) {
      defaultViewport = json["defaultViewport"].toList();
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("draftAccessList")) {
      draftAccessList = json["draftAccessList"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("lastModifiedTime")) {
      lastModifiedTime = json["lastModifiedTime"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("projectId")) {
      projectId = json["projectId"];
    }
    if (json.containsKey("tags")) {
      tags = json["tags"].toList();
    }
    if (json.containsKey("versions")) {
      versions = json["versions"].toList();
    }
  }

  /** Create JSON Object for Map */
  core.Map toJson() {
    var output = new core.Map();

    if (bbox != null) {
      output["bbox"] = bbox.toList();
    }
    if (contents != null) {
      output["contents"] = contents.map((contentsItem) => contentsItem.toJson()).toList();
    }
    if (creationTime != null) {
      output["creationTime"] = creationTime;
    }
    if (defaultViewport != null) {
      output["defaultViewport"] = defaultViewport.toList();
    }
    if (description != null) {
      output["description"] = description;
    }
    if (draftAccessList != null) {
      output["draftAccessList"] = draftAccessList;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (lastModifiedTime != null) {
      output["lastModifiedTime"] = lastModifiedTime;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (projectId != null) {
      output["projectId"] = projectId;
    }
    if (tags != null) {
      output["tags"] = tags.toList();
    }
    if (versions != null) {
      output["versions"] = versions.toList();
    }

    return output;
  }

  /** Return String representation of Map */
  core.String toString() => JSON.encode(this.toJson());

}

class MapFolder implements MapItem {

  core.List<MapItem> contents;

  /** An array of four numbers (west, south, east, north) which defines the rectangular bounding box of the default viewport. The numbers represent latitude and longitude in decimal degrees. */
  core.List<core.num> defaultViewport;

  /** A user defined alias for this MapFolder, specific to this Map. */
  core.String key;

  /** The name of this MapFolder. */
  core.String name;

  /** Identifies this object as a MapFolder. */
  core.String type;

  /** The visibility setting of this MapFolder. One of "defaultOn" or "defaultOff". */
  core.String visibility;

  /** Create new MapFolder from JSON data */
  MapFolder.fromJson(core.Map json) {
    if (json.containsKey("contents")) {
      contents = json["contents"].map((contentsItem) => new MapItem.fromJson(contentsItem)).toList();
    }
    if (json.containsKey("defaultViewport")) {
      defaultViewport = json["defaultViewport"].toList();
    }
    if (json.containsKey("key")) {
      key = json["key"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("visibility")) {
      visibility = json["visibility"];
    }
  }

  /** Create JSON Object for MapFolder */
  core.Map toJson() {
    var output = new core.Map();

    if (contents != null) {
      output["contents"] = contents.map((contentsItem) => contentsItem.toJson()).toList();
    }
    if (defaultViewport != null) {
      output["defaultViewport"] = defaultViewport.toList();
    }
    if (key != null) {
      output["key"] = key;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (visibility != null) {
      output["visibility"] = visibility;
    }

    return output;
  }

  /** Return String representation of MapFolder */
  core.String toString() => JSON.encode(this.toJson());

}

abstract class MapItem {

  /** Create new MapItem from JSON data */
  factory MapItem.fromJson(core.Map json) {
    switch(json["type"]) {
      case "folder":
        return new MapFolder.fromJson(json);
      case "kmlLink":
        return new MapKmlLink.fromJson(json);
      case "layer":
        return new MapLayer.fromJson(json);
    }
  }

  /** Create JSON Object for MapItem */
  core.Map toJson();

  /** Return String representation of MapItem */
  core.String toString() => JSON.encode(this.toJson());

}

class MapKmlLink implements MapItem {

  /** An array of four numbers (west, south, east, north) which defines the rectangular bounding box of the default viewport. The numbers represent latitude and longitude in decimal degrees. */
  core.List<core.num> defaultViewport;

  /** The URL to the KML file represented by this MapKmlLink. */
  core.String kmlUrl;

  /** The name of this MapKmlLink. */
  core.String name;

  /** Identifies this object as a MapKmlLink. */
  core.String type;

  /** The visibility setting of this MapKmlLink. One of "defaultOn" or "defaultOff". */
  core.String visibility;

  /** Create new MapKmlLink from JSON data */
  MapKmlLink.fromJson(core.Map json) {
    if (json.containsKey("defaultViewport")) {
      defaultViewport = json["defaultViewport"].toList();
    }
    if (json.containsKey("kmlUrl")) {
      kmlUrl = json["kmlUrl"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("visibility")) {
      visibility = json["visibility"];
    }
  }

  /** Create JSON Object for MapKmlLink */
  core.Map toJson() {
    var output = new core.Map();

    if (defaultViewport != null) {
      output["defaultViewport"] = defaultViewport.toList();
    }
    if (kmlUrl != null) {
      output["kmlUrl"] = kmlUrl;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (visibility != null) {
      output["visibility"] = visibility;
    }

    return output;
  }

  /** Return String representation of MapKmlLink */
  core.String toString() => JSON.encode(this.toJson());

}

class MapLayer implements MapItem {

  /** An array of four numbers (west, south, east, north) which defines the rectangular bounding box of the default viewport. The numbers represent latitude and longitude in decimal degrees. */
  core.List<core.num> defaultViewport;

  /** The ID of this MapLayer. This ID can be used to request more details about the layer. */
  core.String id;

  /** A user defined alias for this MapLayer, specific to this Map. */
  core.String key;

  /** The name of this MapLayer. */
  core.String name;

  /** Identifies this object as a MapLayer. */
  core.String type;

  /** The visibility setting of this MapLayer. One of "defaultOn" or "defaultOff". */
  core.String visibility;

  /** Create new MapLayer from JSON data */
  MapLayer.fromJson(core.Map json) {
    if (json.containsKey("defaultViewport")) {
      defaultViewport = json["defaultViewport"].toList();
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("key")) {
      key = json["key"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("visibility")) {
      visibility = json["visibility"];
    }
  }

  /** Create JSON Object for MapLayer */
  core.Map toJson() {
    var output = new core.Map();

    if (defaultViewport != null) {
      output["defaultViewport"] = defaultViewport.toList();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (key != null) {
      output["key"] = key;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (visibility != null) {
      output["visibility"] = visibility;
    }

    return output;
  }

  /** Return String representation of MapLayer */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response returned by a call to maps.List. */
class MapsListResponse {

  /** Resources returned. */
  core.List<Map> maps;

  /** Next page token. */
  core.String nextPageToken;

  /** Create new MapsListResponse from JSON data */
  MapsListResponse.fromJson(core.Map json) {
    if (json.containsKey("maps")) {
      maps = json["maps"].map((mapsItem) => new Map.fromJson(mapsItem)).toList();
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for MapsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (maps != null) {
      output["maps"] = maps.map((mapsItem) => mapsItem.toJson()).toList();
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of MapsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** A list of the parents of an asset. */
class Parent {

  /** The ID of this parent. */
  core.String id;

  /** Create new Parent from JSON data */
  Parent.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
  }

  /** Create JSON Object for Parent */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }

    return output;
  }

  /** Return String representation of Parent */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response returned by a call to parents.List. */
class ParentsListResponse {

  /** Next page token. */
  core.String nextPageToken;

  /** The parent assets. */
  core.List<Parent> parents;

  /** Create new ParentsListResponse from JSON data */
  ParentsListResponse.fromJson(core.Map json) {
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("parents")) {
      parents = json["parents"].map((parentsItem) => new Parent.fromJson(parentsItem)).toList();
    }
  }

  /** Create JSON Object for ParentsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (parents != null) {
      output["parents"] = parents.map((parentsItem) => parentsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of ParentsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Style for points. */
class PointStyle {

  /** Icon for the point; exactly one field in 'icon' must be set. */
  IconStyle icon;

  /** Label style for the point. */
  LabelStyle label;

  /** Create new PointStyle from JSON data */
  PointStyle.fromJson(core.Map json) {
    if (json.containsKey("icon")) {
      icon = new IconStyle.fromJson(json["icon"]);
    }
    if (json.containsKey("label")) {
      label = new LabelStyle.fromJson(json["label"]);
    }
  }

  /** Create JSON Object for PointStyle */
  core.Map toJson() {
    var output = new core.Map();

    if (icon != null) {
      output["icon"] = icon.toJson();
    }
    if (label != null) {
      output["label"] = label.toJson();
    }

    return output;
  }

  /** Return String representation of PointStyle */
  core.String toString() => JSON.encode(this.toJson());

}

/** Style for polygons. */
class PolygonStyle {

  /** Fill color of the polygon. If not provided, the polygon will be transparent and not visible if there is no border. */
  Color fill;

  /** Border of the polygon. 0 < border.width <= 10. */
  Border stroke;

  /** Create new PolygonStyle from JSON data */
  PolygonStyle.fromJson(core.Map json) {
    if (json.containsKey("fill")) {
      fill = new Color.fromJson(json["fill"]);
    }
    if (json.containsKey("stroke")) {
      stroke = new Border.fromJson(json["stroke"]);
    }
  }

  /** Create JSON Object for PolygonStyle */
  core.Map toJson() {
    var output = new core.Map();

    if (fill != null) {
      output["fill"] = fill.toJson();
    }
    if (stroke != null) {
      output["stroke"] = stroke.toJson();
    }

    return output;
  }

  /** Return String representation of PolygonStyle */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response returned by a call to any asset's Process method. */
class ProcessResponse {

  /** Create new ProcessResponse from JSON data */
  ProcessResponse.fromJson(core.Map json) {
  }

  /** Create JSON Object for ProcessResponse */
  core.Map toJson() {
    var output = new core.Map();


    return output;
  }

  /** Return String representation of ProcessResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** A project groups a collection of resources. */
class Project {

  /** An ID used to refer to this project. */
  core.String id;

  /** A user provided name for this project. */
  core.String name;

  /** Create new Project from JSON data */
  Project.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for Project */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of Project */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response returned by a call to projects.List. */
class ProjectsListResponse {

  /** Projects returned. */
  core.List<Project> projects;

  /** Create new ProjectsListResponse from JSON data */
  ProjectsListResponse.fromJson(core.Map json) {
    if (json.containsKey("projects")) {
      projects = json["projects"].map((projectsItem) => new Project.fromJson(projectsItem)).toList();
    }
  }

  /** Create JSON Object for ProjectsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (projects != null) {
      output["projects"] = projects.map((projectsItem) => projectsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of ProjectsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response returned by a call to any asset's Publish method. */
class PublishResponse {

  /** Create new PublishResponse from JSON data */
  PublishResponse.fromJson(core.Map json) {
  }

  /** Create JSON Object for PublishResponse */
  core.Map toJson() {
    var output = new core.Map();


    return output;
  }

  /** Return String representation of PublishResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** A raster resource. */
class Raster {

  /** A rectangular bounding box which contains all of the data in this Raster. The numbers represent latitude and longitude in decimal degrees. */
  core.List<core.num> bbox;

  /** The creation time of this raster. The value is an RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). */
  core.String creationTime;

  /** The description of this Raster, supplied by the author. */
  core.String description;

  /** A globally unique ID, used to refer to this Raster. */
  core.String id;

  /** The last modified time of this raster. The value is an RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). */
  core.String lastModifiedTime;

  /** The name of this Raster, supplied by the author. */
  core.String name;

  /** The ID of the project that this Raster is in. */
  core.String projectId;

  /** The type of this Raster. Always "image" today. */
  core.String rasterType;

  /** Tags of this Raster. */
  core.List<core.String> tags;

  /** Create new Raster from JSON data */
  Raster.fromJson(core.Map json) {
    if (json.containsKey("bbox")) {
      bbox = json["bbox"].toList();
    }
    if (json.containsKey("creationTime")) {
      creationTime = json["creationTime"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("lastModifiedTime")) {
      lastModifiedTime = json["lastModifiedTime"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("projectId")) {
      projectId = json["projectId"];
    }
    if (json.containsKey("rasterType")) {
      rasterType = json["rasterType"];
    }
    if (json.containsKey("tags")) {
      tags = json["tags"].toList();
    }
  }

  /** Create JSON Object for Raster */
  core.Map toJson() {
    var output = new core.Map();

    if (bbox != null) {
      output["bbox"] = bbox.toList();
    }
    if (creationTime != null) {
      output["creationTime"] = creationTime;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (lastModifiedTime != null) {
      output["lastModifiedTime"] = lastModifiedTime;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (projectId != null) {
      output["projectId"] = projectId;
    }
    if (rasterType != null) {
      output["rasterType"] = rasterType;
    }
    if (tags != null) {
      output["tags"] = tags.toList();
    }

    return output;
  }

  /** Return String representation of Raster */
  core.String toString() => JSON.encode(this.toJson());

}

/** A raster collection groups multiple Raster resources for inclusion in a Layer. */
class RasterCollection {

  /** The name of the attribution to be used for this RasterCollection. */
  core.String attribution;

  /** A rectangular bounding box which contains all of the data in this RasterCollection. The numbers represent latitude and longitude in decimal degrees. */
  core.List<core.num> bbox;

  /** The creation time of this RasterCollection. The value is an RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). */
  core.String creationTime;

  /** The description of this RasterCollection, supplied by the author. */
  core.String description;

  /** The name of an access list of the Map Editor type. The user on whose behalf the request is being sent must be an editor on that access list. Read About access lists in the Google Maps Engine help center for more information. */
  core.String draftAccessList;

  /** A globally unique ID, used to refer to this RasterCollection. */
  core.String id;

  /** The last modified time of this RasterCollection. The value is an RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). */
  core.String lastModifiedTime;

  /** True if this RasterCollection is a mosaic. */
  core.bool mosaic;

  /** The name of this RasterCollection, supplied by the author. */
  core.String name;

  /** The processing status of this RasterCollection. */
  core.String processingStatus;

  /** The ID of the project that this RasterCollection is in. */
  core.String projectId;

  /** The type of rasters contained within this RasterCollection. */
  core.String rasterType;

  /** Tags of this RasterCollection. */
  core.List<core.String> tags;

  /** Create new RasterCollection from JSON data */
  RasterCollection.fromJson(core.Map json) {
    if (json.containsKey("attribution")) {
      attribution = json["attribution"];
    }
    if (json.containsKey("bbox")) {
      bbox = json["bbox"].toList();
    }
    if (json.containsKey("creationTime")) {
      creationTime = json["creationTime"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("draftAccessList")) {
      draftAccessList = json["draftAccessList"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("lastModifiedTime")) {
      lastModifiedTime = json["lastModifiedTime"];
    }
    if (json.containsKey("mosaic")) {
      mosaic = json["mosaic"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("processingStatus")) {
      processingStatus = json["processingStatus"];
    }
    if (json.containsKey("projectId")) {
      projectId = json["projectId"];
    }
    if (json.containsKey("rasterType")) {
      rasterType = json["rasterType"];
    }
    if (json.containsKey("tags")) {
      tags = json["tags"].toList();
    }
  }

  /** Create JSON Object for RasterCollection */
  core.Map toJson() {
    var output = new core.Map();

    if (attribution != null) {
      output["attribution"] = attribution;
    }
    if (bbox != null) {
      output["bbox"] = bbox.toList();
    }
    if (creationTime != null) {
      output["creationTime"] = creationTime;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (draftAccessList != null) {
      output["draftAccessList"] = draftAccessList;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (lastModifiedTime != null) {
      output["lastModifiedTime"] = lastModifiedTime;
    }
    if (mosaic != null) {
      output["mosaic"] = mosaic;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (processingStatus != null) {
      output["processingStatus"] = processingStatus;
    }
    if (projectId != null) {
      output["projectId"] = projectId;
    }
    if (rasterType != null) {
      output["rasterType"] = rasterType;
    }
    if (tags != null) {
      output["tags"] = tags.toList();
    }

    return output;
  }

  /** Return String representation of RasterCollection */
  core.String toString() => JSON.encode(this.toJson());

}

/** The request sent to rasterCollections.Rasters.BatchDelete. */
class RasterCollectionsRasterBatchDeleteRequest {

  /** An array of Raster asset IDs to be removed from this RasterCollection. */
  core.List<core.String> ids;

  /** Create new RasterCollectionsRasterBatchDeleteRequest from JSON data */
  RasterCollectionsRasterBatchDeleteRequest.fromJson(core.Map json) {
    if (json.containsKey("ids")) {
      ids = json["ids"].toList();
    }
  }

  /** Create JSON Object for RasterCollectionsRasterBatchDeleteRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (ids != null) {
      output["ids"] = ids.toList();
    }

    return output;
  }

  /** Return String representation of RasterCollectionsRasterBatchDeleteRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response returned by a call to rasterCollections.rasters.batchDelete. */
class RasterCollectionsRastersBatchDeleteResponse {

  /** Create new RasterCollectionsRastersBatchDeleteResponse from JSON data */
  RasterCollectionsRastersBatchDeleteResponse.fromJson(core.Map json) {
  }

  /** Create JSON Object for RasterCollectionsRastersBatchDeleteResponse */
  core.Map toJson() {
    var output = new core.Map();


    return output;
  }

  /** Return String representation of RasterCollectionsRastersBatchDeleteResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** The request sent to rasterCollections.Rasters.BatchInsert. */
class RasterCollectionsRastersBatchInsertRequest {

  /** An array of Raster asset IDs to be added to this RasterCollection. */
  core.List<core.String> ids;

  /** Create new RasterCollectionsRastersBatchInsertRequest from JSON data */
  RasterCollectionsRastersBatchInsertRequest.fromJson(core.Map json) {
    if (json.containsKey("ids")) {
      ids = json["ids"].toList();
    }
  }

  /** Create JSON Object for RasterCollectionsRastersBatchInsertRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (ids != null) {
      output["ids"] = ids.toList();
    }

    return output;
  }

  /** Return String representation of RasterCollectionsRastersBatchInsertRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response returned by a call to rasterCollections.rasters.batchInsert. */
class RasterCollectionsRastersBatchInsertResponse {

  /** Create new RasterCollectionsRastersBatchInsertResponse from JSON data */
  RasterCollectionsRastersBatchInsertResponse.fromJson(core.Map json) {
  }

  /** Create JSON Object for RasterCollectionsRastersBatchInsertResponse */
  core.Map toJson() {
    var output = new core.Map();


    return output;
  }

  /** Return String representation of RasterCollectionsRastersBatchInsertResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response returned by a call to raster_collections.List. */
class RastercollectionsListResponse {

  /** Next page token. */
  core.String nextPageToken;

  /** Resources returned. */
  core.List<RasterCollection> rasterCollections;

  /** Create new RastercollectionsListResponse from JSON data */
  RastercollectionsListResponse.fromJson(core.Map json) {
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("rasterCollections")) {
      rasterCollections = json["rasterCollections"].map((rasterCollectionsItem) => new RasterCollection.fromJson(rasterCollectionsItem)).toList();
    }
  }

  /** Create JSON Object for RastercollectionsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (rasterCollections != null) {
      output["rasterCollections"] = rasterCollections.map((rasterCollectionsItem) => rasterCollectionsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of RastercollectionsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response returned by a call to rasterCollections.rasters.List. */
class RastersListResponse {

  /** Next page token. */
  core.String nextPageToken;

  /** Resources returned. */
  core.List<Raster> rasters;

  /** Create new RastersListResponse from JSON data */
  RastersListResponse.fromJson(core.Map json) {
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("rasters")) {
      rasters = json["rasters"].map((rastersItem) => new Raster.fromJson(rastersItem)).toList();
    }
  }

  /** Create JSON Object for RastersListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (rasters != null) {
      output["rasters"] = rasters.map((rastersItem) => rastersItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of RastersListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** A schema indicating the properties which may be associated with features within a Table, and the types of those properties. */
class Schema {

  /** An array of TableColumn objects. The first object in the array must be named geometry and be of type points, lineStrings, polygons, or mixedGeometry. */
  core.List<TableColumn> columns;

  /** The name of the column that contains a feature's geometry. This field can be omitted during table create; Google Maps Engine supports only a single geometry column, which must be named geometry and be the first object in the columns array. */
  core.String primaryGeometry;

  /** The name of the column that contains the unique identifier of a Feature. */
  core.String primaryKey;

  /** Create new Schema from JSON data */
  Schema.fromJson(core.Map json) {
    if (json.containsKey("columns")) {
      columns = json["columns"].map((columnsItem) => new TableColumn.fromJson(columnsItem)).toList();
    }
    if (json.containsKey("primaryGeometry")) {
      primaryGeometry = json["primaryGeometry"];
    }
    if (json.containsKey("primaryKey")) {
      primaryKey = json["primaryKey"];
    }
  }

  /** Create JSON Object for Schema */
  core.Map toJson() {
    var output = new core.Map();

    if (columns != null) {
      output["columns"] = columns.map((columnsItem) => columnsItem.toJson()).toList();
    }
    if (primaryGeometry != null) {
      output["primaryGeometry"] = primaryGeometry;
    }
    if (primaryKey != null) {
      output["primaryKey"] = primaryKey;
    }

    return output;
  }

  /** Return String representation of Schema */
  core.String toString() => JSON.encode(this.toJson());

}

/** A collection of geographic features, and associated metadata. */
class Table {

  /** A rectangular bounding box which contains all of the data in this table. The numbers represent latitude and longitude in decimal degrees. */
  core.List<core.num> bbox;

  /** The creation time of this table. The value is an RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). */
  core.String creationTime;

  /** The description of this table, supplied by the author. */
  core.String description;

  /** The name of an access list of the Map Editor type. The user on whose behalf the request is being sent must be an editor on that access list. Read About access lists in the Google Maps Engine help center for more information. */
  core.String draftAccessList;

  /** The files associated with this table. */
  core.List<File> files;

  /** A globally unique ID, used to refer to this table. */
  core.String id;

  /** The last modified time of this table. The value is an RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). */
  core.String lastModifiedTime;

  /** The name of this table, supplied by the author. */
  core.String name;

  /** The processing status of this table. */
  core.String processingStatus;

  /** The ID of the project to which the table belongs. */
  core.String projectId;

  /** The access list to whom view permissions are granted. The value must be the name of a Maps Engine access list of the Map Viewer type, and the user must be a viewer on that list. Read About access lists in the Google Maps Engine help center for more information. */
  core.String publishedAccessList;

  /** The schema for this table. */
  Schema schema;

  /** Encoding of the uploaded files. Valid values include UTF-8, CP1251, ISO 8859-1, and Shift_JIS. */
  core.String sourceEncoding;

  /** An array of text strings, with each string representing a tag. More information about tags can be found in the Tagging data article of the Maps Engine help center. */
  core.List<core.String> tags;

  /** Create new Table from JSON data */
  Table.fromJson(core.Map json) {
    if (json.containsKey("bbox")) {
      bbox = json["bbox"].toList();
    }
    if (json.containsKey("creationTime")) {
      creationTime = json["creationTime"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("draftAccessList")) {
      draftAccessList = json["draftAccessList"];
    }
    if (json.containsKey("files")) {
      files = json["files"].map((filesItem) => new File.fromJson(filesItem)).toList();
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("lastModifiedTime")) {
      lastModifiedTime = json["lastModifiedTime"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("processingStatus")) {
      processingStatus = json["processingStatus"];
    }
    if (json.containsKey("projectId")) {
      projectId = json["projectId"];
    }
    if (json.containsKey("publishedAccessList")) {
      publishedAccessList = json["publishedAccessList"];
    }
    if (json.containsKey("schema")) {
      schema = new Schema.fromJson(json["schema"]);
    }
    if (json.containsKey("sourceEncoding")) {
      sourceEncoding = json["sourceEncoding"];
    }
    if (json.containsKey("tags")) {
      tags = json["tags"].toList();
    }
  }

  /** Create JSON Object for Table */
  core.Map toJson() {
    var output = new core.Map();

    if (bbox != null) {
      output["bbox"] = bbox.toList();
    }
    if (creationTime != null) {
      output["creationTime"] = creationTime;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (draftAccessList != null) {
      output["draftAccessList"] = draftAccessList;
    }
    if (files != null) {
      output["files"] = files.map((filesItem) => filesItem.toJson()).toList();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (lastModifiedTime != null) {
      output["lastModifiedTime"] = lastModifiedTime;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (processingStatus != null) {
      output["processingStatus"] = processingStatus;
    }
    if (projectId != null) {
      output["projectId"] = projectId;
    }
    if (publishedAccessList != null) {
      output["publishedAccessList"] = publishedAccessList;
    }
    if (schema != null) {
      output["schema"] = schema.toJson();
    }
    if (sourceEncoding != null) {
      output["sourceEncoding"] = sourceEncoding;
    }
    if (tags != null) {
      output["tags"] = tags.toList();
    }

    return output;
  }

  /** Return String representation of Table */
  core.String toString() => JSON.encode(this.toJson());

}

class TableColumn {

  /** The column name. */
  core.String name;

  /** The type of data stored in this column. */
  core.String type;

  /** Create new TableColumn from JSON data */
  TableColumn.fromJson(core.Map json) {
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for TableColumn */
  core.Map toJson() {
    var output = new core.Map();

    if (name != null) {
      output["name"] = name;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of TableColumn */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response returned by a call to tables.List. */
class TablesListResponse {

  /** Next page token. */
  core.String nextPageToken;

  /** Resources returned. */
  core.List<Table> tables;

  /** Create new TablesListResponse from JSON data */
  TablesListResponse.fromJson(core.Map json) {
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("tables")) {
      tables = json["tables"].map((tablesItem) => new Table.fromJson(tablesItem)).toList();
    }
  }

  /** Create JSON Object for TablesListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (tables != null) {
      output["tables"] = tables.map((tablesItem) => tablesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of TablesListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** A vector style contains styling information for vector layer. */
class VectorStyle {

  /** Display rules of the vector style. The first matched rule will apply to the features. If no display rule is provided, a default display rule will be generated according to Geometry type. */
  core.List<DisplayRule> displayRules;

  /** Individual feature info, this is called Info Window in Maps Engine UI. If not provided, a default template with all attributes will be generated. */
  FeatureInfo featureInfo;

  /** The type of the vector style. Currently, only displayRule is supported. */
  core.String type;

  /** Create new VectorStyle from JSON data */
  VectorStyle.fromJson(core.Map json) {
    if (json.containsKey("displayRules")) {
      displayRules = json["displayRules"].map((displayRulesItem) => new DisplayRule.fromJson(displayRulesItem)).toList();
    }
    if (json.containsKey("featureInfo")) {
      featureInfo = new FeatureInfo.fromJson(json["featureInfo"]);
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for VectorStyle */
  core.Map toJson() {
    var output = new core.Map();

    if (displayRules != null) {
      output["displayRules"] = displayRules.map((displayRulesItem) => displayRulesItem.toJson()).toList();
    }
    if (featureInfo != null) {
      output["featureInfo"] = featureInfo.toJson();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of VectorStyle */
  core.String toString() => JSON.encode(this.toJson());

}

/** Zoom level range. Zoom levels are restricted between 0 and 24, inclusive. */
class ZoomLevels {

  /** Maximum zoom level. */
  core.int max;

  /** Minimum zoom level. */
  core.int min;

  /** Create new ZoomLevels from JSON data */
  ZoomLevels.fromJson(core.Map json) {
    if (json.containsKey("max")) {
      max = json["max"];
    }
    if (json.containsKey("min")) {
      min = json["min"];
    }
  }

  /** Create JSON Object for ZoomLevels */
  core.Map toJson() {
    var output = new core.Map();

    if (max != null) {
      output["max"] = max;
    }
    if (min != null) {
      output["min"] = min;
    }

    return output;
  }

  /** Return String representation of ZoomLevels */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
