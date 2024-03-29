part of mapsengine_v1_api;

class AssetsResource_ {

  final Client _client;

  final AssetsParentsResource_ parents;

  AssetsResource_(Client client) :
      _client = client,
      parents = new AssetsParentsResource_(client);

  /**
   * Return metadata for a particular asset.
   *
   * [id] - The ID of the asset.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Asset> get(core.String id, {core.Map optParams}) {
    var url = "assets/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Asset.fromJson(data));
  }

  /**
   * Return all assets readable by the current user.
   *
   * [bbox] - A bounding box, expressed as "west,south,east,north". If set, only assets which intersect this bounding box will be returned.
   *
   * [createdAfter] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been created at or after this time.
   *
   * [createdBefore] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been created at or before this time.
   *
   * [creatorEmail] - An email address representing a user. Returned assets that have been created by the user associated with the provided email address.
   *
   * [maxResults] - The maximum number of items to include in a single response page. The maximum supported value is 100.
   *
   * [modifiedAfter] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been modified at or after this time.
   *
   * [modifiedBefore] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been modified at or before this time.
   *
   * [pageToken] - The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.
   *
   * [projectId] - The ID of a Maps Engine project, used to filter the response. To list all available projects with their IDs, send a Projects: list request. You can also find your project ID as the value of the DashboardPlace:cid URL parameter when signed in to mapsengine.google.com.
   *
   * [role] - The role parameter indicates that the response should only contain assets where the current user has the specified level of access.
   *   Allowed values:
   *     owner - The user can read, write and administer the asset.
   *     reader - The user can read the asset.
   *     writer - The user can read and write the asset.
   *
   * [search] - An unstructured search string used to filter the set of results based on asset metadata.
   *
   * [tags] - A comma separated list of tags. Returned assets will contain all the tags from the list.
   *
   * [type] - A comma separated list of asset types. Returned assets will have one of the types from the provided list. Supported values are 'map', 'layer', 'rasterCollection' and 'table'.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AssetsListResponse> list({core.String bbox, core.String createdAfter, core.String createdBefore, core.String creatorEmail, core.int maxResults, core.String modifiedAfter, core.String modifiedBefore, core.String pageToken, core.String projectId, core.String role, core.String search, core.String tags, core.String type, core.Map optParams}) {
    var url = "assets";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bbox != null) queryParams["bbox"] = bbox;
    if (createdAfter != null) queryParams["createdAfter"] = createdAfter;
    if (createdBefore != null) queryParams["createdBefore"] = createdBefore;
    if (creatorEmail != null) queryParams["creatorEmail"] = creatorEmail;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (modifiedAfter != null) queryParams["modifiedAfter"] = modifiedAfter;
    if (modifiedBefore != null) queryParams["modifiedBefore"] = modifiedBefore;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (projectId != null) queryParams["projectId"] = projectId;
    if (role != null && !["owner", "reader", "writer"].contains(role)) {
      paramErrors.add("Allowed values for role: owner, reader, writer");
    }
    if (role != null) queryParams["role"] = role;
    if (search != null) queryParams["search"] = search;
    if (tags != null) queryParams["tags"] = tags;
    if (type != null) queryParams["type"] = type;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AssetsListResponse.fromJson(data));
  }
}

class AssetsParentsResource_ {

  final Client _client;

  AssetsParentsResource_(Client client) :
      _client = client;

  /**
   * Return all parent ids of the specified asset.
   *
   * [id] - The ID of the asset whose parents will be listed.
   *
   * [maxResults] - The maximum number of items to include in a single response page. The maximum supported value is 50.
   *
   * [pageToken] - The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ParentsListResponse> list(core.String id, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "assets/{id}/parents";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ParentsListResponse.fromJson(data));
  }
}

class LayersResource_ {

  final Client _client;

  final LayersParentsResource_ parents;

  LayersResource_(Client client) :
      _client = client,
      parents = new LayersParentsResource_(client);

  /**
   * Cancel processing on a layer asset.
   *
   * [id] - The ID of the layer.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ProcessResponse> cancelProcessing(core.String id, {core.Map optParams}) {
    var url = "layers/{id}/cancelProcessing";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ProcessResponse.fromJson(data));
  }

  /**
   * Create a layer asset.
   *
   * [request] - Layer to send in this request
   *
   * [process] - Whether to queue the created layer for processing.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Layer> create(Layer request, {core.bool process, core.Map optParams}) {
    var url = "layers";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (process != null) queryParams["process"] = process;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Layer.fromJson(data));
  }

  /**
   * Delete a layer.
   *
   * [id] - The ID of the layer. Only the layer creator or project owner are permitted to delete. If the layer is published, or included in a map, the request will fail. Unpublish the layer, and remove it from all maps prior to deleting.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String id, {core.Map optParams}) {
    var url = "layers/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Return metadata for a particular layer.
   *
   * [id] - The ID of the layer.
   *
   * [version]
   *   Allowed values:
   *     draft - The draft version.
   *     published - The published version.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Layer> get(core.String id, {core.String version, core.Map optParams}) {
    var url = "layers/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (version != null && !["draft", "published"].contains(version)) {
      paramErrors.add("Allowed values for version: draft, published");
    }
    if (version != null) queryParams["version"] = version;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Layer.fromJson(data));
  }

  /**
   * Return the published metadata for a particular layer.
   *
   * [id] - The ID of the layer.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PublishedLayer> getPublished(core.String id, {core.Map optParams}) {
    var url = "layers/{id}/published";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PublishedLayer.fromJson(data));
  }

  /**
   * Return all layers readable by the current user.
   *
   * [bbox] - A bounding box, expressed as "west,south,east,north". If set, only assets which intersect this bounding box will be returned.
   *
   * [createdAfter] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been created at or after this time.
   *
   * [createdBefore] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been created at or before this time.
   *
   * [creatorEmail] - An email address representing a user. Returned assets that have been created by the user associated with the provided email address.
   *
   * [maxResults] - The maximum number of items to include in a single response page. The maximum supported value is 100.
   *
   * [modifiedAfter] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been modified at or after this time.
   *
   * [modifiedBefore] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been modified at or before this time.
   *
   * [pageToken] - The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.
   *
   * [processingStatus]
   *   Allowed values:
   *     complete - The layer has completed processing.
   *     failed - The layer has failed processing.
   *     notReady - The layer is not ready for processing.
   *     processing - The layer is processing.
   *     ready - The layer is ready for processing.
   *
   * [projectId] - The ID of a Maps Engine project, used to filter the response. To list all available projects with their IDs, send a Projects: list request. You can also find your project ID as the value of the DashboardPlace:cid URL parameter when signed in to mapsengine.google.com.
   *
   * [role] - The role parameter indicates that the response should only contain assets where the current user has the specified level of access.
   *   Allowed values:
   *     owner - The user can read, write and administer the asset.
   *     reader - The user can read the asset.
   *     writer - The user can read and write the asset.
   *
   * [search] - An unstructured search string used to filter the set of results based on asset metadata.
   *
   * [tags] - A comma separated list of tags. Returned assets will contain all the tags from the list.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<LayersListResponse> list({core.String bbox, core.String createdAfter, core.String createdBefore, core.String creatorEmail, core.int maxResults, core.String modifiedAfter, core.String modifiedBefore, core.String pageToken, core.String processingStatus, core.String projectId, core.String role, core.String search, core.String tags, core.Map optParams}) {
    var url = "layers";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bbox != null) queryParams["bbox"] = bbox;
    if (createdAfter != null) queryParams["createdAfter"] = createdAfter;
    if (createdBefore != null) queryParams["createdBefore"] = createdBefore;
    if (creatorEmail != null) queryParams["creatorEmail"] = creatorEmail;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (modifiedAfter != null) queryParams["modifiedAfter"] = modifiedAfter;
    if (modifiedBefore != null) queryParams["modifiedBefore"] = modifiedBefore;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (processingStatus != null && !["complete", "failed", "notReady", "processing", "ready"].contains(processingStatus)) {
      paramErrors.add("Allowed values for processingStatus: complete, failed, notReady, processing, ready");
    }
    if (processingStatus != null) queryParams["processingStatus"] = processingStatus;
    if (projectId != null) queryParams["projectId"] = projectId;
    if (role != null && !["owner", "reader", "writer"].contains(role)) {
      paramErrors.add("Allowed values for role: owner, reader, writer");
    }
    if (role != null) queryParams["role"] = role;
    if (search != null) queryParams["search"] = search;
    if (tags != null) queryParams["tags"] = tags;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new LayersListResponse.fromJson(data));
  }

  /**
   * Return all published layers readable by the current user.
   *
   * [maxResults] - The maximum number of items to include in a single response page. The maximum supported value is 100.
   *
   * [pageToken] - The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.
   *
   * [projectId] - The ID of a Maps Engine project, used to filter the response. To list all available projects with their IDs, send a Projects: list request. You can also find your project ID as the value of the DashboardPlace:cid URL parameter when signed in to mapsengine.google.com.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PublishedLayersListResponse> listPublished({core.int maxResults, core.String pageToken, core.String projectId, core.Map optParams}) {
    var url = "layers/published";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (projectId != null) queryParams["projectId"] = projectId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PublishedLayersListResponse.fromJson(data));
  }

  /**
   * Mutate a layer asset.
   *
   * [request] - Layer to send in this request
   *
   * [id] - The ID of the layer.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> patch(Layer request, core.String id, {core.Map optParams}) {
    var url = "layers/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Process a layer asset.
   *
   * [id] - The ID of the layer.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ProcessResponse> process(core.String id, {core.Map optParams}) {
    var url = "layers/{id}/process";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ProcessResponse.fromJson(data));
  }

  /**
   * Publish a layer asset.
   *
   * [id] - The ID of the layer.
   *
   * [force] - If set to true, the API will allow publication of the layer even if it's out of date. If not true, you'll need to reprocess any out-of-date layer before publishing.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PublishResponse> publish(core.String id, {core.bool force, core.Map optParams}) {
    var url = "layers/{id}/publish";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (force != null) queryParams["force"] = force;
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PublishResponse.fromJson(data));
  }

  /**
   * Unpublish a layer asset.
   *
   * [id] - The ID of the layer.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PublishResponse> unpublish(core.String id, {core.Map optParams}) {
    var url = "layers/{id}/unpublish";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PublishResponse.fromJson(data));
  }
}

class LayersParentsResource_ {

  final Client _client;

  LayersParentsResource_(Client client) :
      _client = client;

  /**
   * Return all parent ids of the specified layer.
   *
   * [id] - The ID of the layer whose parents will be listed.
   *
   * [maxResults] - The maximum number of items to include in a single response page. The maximum supported value is 50.
   *
   * [pageToken] - The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ParentsListResponse> list(core.String id, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "layers/{id}/parents";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ParentsListResponse.fromJson(data));
  }
}

class MapsResource_ {

  final Client _client;

  MapsResource_(Client client) :
      _client = client;

  /**
   * Create a map asset.
   *
   * [request] - Map to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Map> create(Map request, {core.Map optParams}) {
    var url = "maps";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Map.fromJson(data));
  }

  /**
   * Delete a map.
   *
   * [id] - The ID of the map. Only the map creator or project owner are permitted to delete. If the map is published the request will fail. Unpublish the map prior to deleting.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String id, {core.Map optParams}) {
    var url = "maps/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Return metadata for a particular map.
   *
   * [id] - The ID of the map.
   *
   * [version] - Deprecated: The version parameter indicates which version of the map should be returned. When version is set to published, the published version of the map will be returned. Please use the maps.getPublished endpoint instead.
   *   Allowed values:
   *     draft - The draft version.
   *     published - The published version.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Map> get(core.String id, {core.String version, core.Map optParams}) {
    var url = "maps/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (version != null && !["draft", "published"].contains(version)) {
      paramErrors.add("Allowed values for version: draft, published");
    }
    if (version != null) queryParams["version"] = version;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Map.fromJson(data));
  }

  /**
   * Return the published metadata for a particular map.
   *
   * [id] - The ID of the map.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PublishedMap> getPublished(core.String id, {core.Map optParams}) {
    var url = "maps/{id}/published";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PublishedMap.fromJson(data));
  }

  /**
   * Return all maps readable by the current user.
   *
   * [bbox] - A bounding box, expressed as "west,south,east,north". If set, only assets which intersect this bounding box will be returned.
   *
   * [createdAfter] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been created at or after this time.
   *
   * [createdBefore] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been created at or before this time.
   *
   * [creatorEmail] - An email address representing a user. Returned assets that have been created by the user associated with the provided email address.
   *
   * [maxResults] - The maximum number of items to include in a single response page. The maximum supported value is 100.
   *
   * [modifiedAfter] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been modified at or after this time.
   *
   * [modifiedBefore] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been modified at or before this time.
   *
   * [pageToken] - The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.
   *
   * [processingStatus]
   *   Allowed values:
   *     complete - The map has completed processing.
   *     failed - The map has failed processing.
   *     notReady - The map is not ready for processing.
   *     processing - The map is processing.
   *
   * [projectId] - The ID of a Maps Engine project, used to filter the response. To list all available projects with their IDs, send a Projects: list request. You can also find your project ID as the value of the DashboardPlace:cid URL parameter when signed in to mapsengine.google.com.
   *
   * [role] - The role parameter indicates that the response should only contain assets where the current user has the specified level of access.
   *   Allowed values:
   *     owner - The user can read, write and administer the asset.
   *     reader - The user can read the asset.
   *     writer - The user can read and write the asset.
   *
   * [search] - An unstructured search string used to filter the set of results based on asset metadata.
   *
   * [tags] - A comma separated list of tags. Returned assets will contain all the tags from the list.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<MapsListResponse> list({core.String bbox, core.String createdAfter, core.String createdBefore, core.String creatorEmail, core.int maxResults, core.String modifiedAfter, core.String modifiedBefore, core.String pageToken, core.String processingStatus, core.String projectId, core.String role, core.String search, core.String tags, core.Map optParams}) {
    var url = "maps";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bbox != null) queryParams["bbox"] = bbox;
    if (createdAfter != null) queryParams["createdAfter"] = createdAfter;
    if (createdBefore != null) queryParams["createdBefore"] = createdBefore;
    if (creatorEmail != null) queryParams["creatorEmail"] = creatorEmail;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (modifiedAfter != null) queryParams["modifiedAfter"] = modifiedAfter;
    if (modifiedBefore != null) queryParams["modifiedBefore"] = modifiedBefore;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (processingStatus != null && !["complete", "failed", "notReady", "processing"].contains(processingStatus)) {
      paramErrors.add("Allowed values for processingStatus: complete, failed, notReady, processing");
    }
    if (processingStatus != null) queryParams["processingStatus"] = processingStatus;
    if (projectId != null) queryParams["projectId"] = projectId;
    if (role != null && !["owner", "reader", "writer"].contains(role)) {
      paramErrors.add("Allowed values for role: owner, reader, writer");
    }
    if (role != null) queryParams["role"] = role;
    if (search != null) queryParams["search"] = search;
    if (tags != null) queryParams["tags"] = tags;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new MapsListResponse.fromJson(data));
  }

  /**
   * Return all published maps readable by the current user.
   *
   * [maxResults] - The maximum number of items to include in a single response page. The maximum supported value is 100.
   *
   * [pageToken] - The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.
   *
   * [projectId] - The ID of a Maps Engine project, used to filter the response. To list all available projects with their IDs, send a Projects: list request. You can also find your project ID as the value of the DashboardPlace:cid URL parameter when signed in to mapsengine.google.com.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PublishedMapsListResponse> listPublished({core.int maxResults, core.String pageToken, core.String projectId, core.Map optParams}) {
    var url = "maps/published";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (projectId != null) queryParams["projectId"] = projectId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PublishedMapsListResponse.fromJson(data));
  }

  /**
   * Mutate a map asset.
   *
   * [request] - Map to send in this request
   *
   * [id] - The ID of the map.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> patch(Map request, core.String id, {core.Map optParams}) {
    var url = "maps/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Publish a map asset.
   *
   * [id] - The ID of the map.
   *
   * [force] - If set to true, the API will allow publication of the map even if it's out of date. If false, the map must have a processingStatus of complete before publishing.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PublishResponse> publish(core.String id, {core.bool force, core.Map optParams}) {
    var url = "maps/{id}/publish";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (force != null) queryParams["force"] = force;
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PublishResponse.fromJson(data));
  }

  /**
   * Unpublish a map asset.
   *
   * [id] - The ID of the map.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PublishResponse> unpublish(core.String id, {core.Map optParams}) {
    var url = "maps/{id}/unpublish";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PublishResponse.fromJson(data));
  }
}

class ProjectsResource_ {

  final Client _client;

  final ProjectsIconsResource_ icons;

  ProjectsResource_(Client client) :
      _client = client,
      icons = new ProjectsIconsResource_(client);

  /**
   * Return all projects readable by the current user.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ProjectsListResponse> list({core.Map optParams}) {
    var url = "projects";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ProjectsListResponse.fromJson(data));
  }
}

class ProjectsIconsResource_ {

  final Client _client;

  ProjectsIconsResource_(Client client) :
      _client = client;

  /**
   * Create an icon.
   *
   * [request] - Icon to send in this request
   *
   * [projectId] - The ID of the project.
   *
   * [content] - Base64 Data of the file content to be uploaded
   *
   * [contentType] - MimeType of the file to be uploaded
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Icon> create(Icon request, core.String projectId, {core.String content, core.String contentType, core.Map optParams}) {
    var url = "projects/{projectId}/icons";
    var uploadUrl = "/upload/mapsengine/v1/projects/{projectId}/icons";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) urlParams["projectId"] = projectId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    if (content != null) {
      response = _client.upload(uploadUrl, "POST", request.toString(), content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    }
    return response
      .then((data) => new Icon.fromJson(data));
  }

  /**
   * Return an icon or its associated metadata
   *
   * [projectId] - The ID of the project.
   *
   * [id] - The ID of the icon.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Icon> get(core.String projectId, core.String id, {core.Map optParams}) {
    var url = "projects/{projectId}/icons/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) urlParams["projectId"] = projectId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Icon.fromJson(data));
  }

  /**
   * Return all icons in the current project
   *
   * [projectId] - The ID of the project.
   *
   * [maxResults] - The maximum number of items to include in a single response page. The maximum supported value is 50.
   *
   * [pageToken] - The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<IconsListResponse> list(core.String projectId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "projects/{projectId}/icons";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) urlParams["projectId"] = projectId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new IconsListResponse.fromJson(data));
  }
}

class RasterCollectionsResource_ {

  final Client _client;

  final RasterCollectionsParentsResource_ parents;
  final RasterCollectionsRastersResource_ rasters;

  RasterCollectionsResource_(Client client) :
      _client = client,
      parents = new RasterCollectionsParentsResource_(client),
      rasters = new RasterCollectionsRastersResource_(client);

  /**
   * Cancel processing on a raster collection asset.
   *
   * [id] - The ID of the raster collection.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ProcessResponse> cancelProcessing(core.String id, {core.Map optParams}) {
    var url = "rasterCollections/{id}/cancelProcessing";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ProcessResponse.fromJson(data));
  }

  /**
   * Create a raster collection asset.
   *
   * [request] - RasterCollection to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<RasterCollection> create(RasterCollection request, {core.Map optParams}) {
    var url = "rasterCollections";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new RasterCollection.fromJson(data));
  }

  /**
   * Delete a raster collection.
   *
   * [id] - The ID of the raster collection. Only the raster collection creator or project owner are permitted to delete. If the rastor collection is included in a layer, the request will fail. Remove the raster collection from all layers prior to deleting.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String id, {core.Map optParams}) {
    var url = "rasterCollections/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Return metadata for a particular raster collection.
   *
   * [id] - The ID of the raster collection.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<RasterCollection> get(core.String id, {core.Map optParams}) {
    var url = "rasterCollections/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new RasterCollection.fromJson(data));
  }

  /**
   * Return all raster collections readable by the current user.
   *
   * [bbox] - A bounding box, expressed as "west,south,east,north". If set, only assets which intersect this bounding box will be returned.
   *
   * [createdAfter] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been created at or after this time.
   *
   * [createdBefore] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been created at or before this time.
   *
   * [creatorEmail] - An email address representing a user. Returned assets that have been created by the user associated with the provided email address.
   *
   * [maxResults] - The maximum number of items to include in a single response page. The maximum supported value is 100.
   *
   * [modifiedAfter] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been modified at or after this time.
   *
   * [modifiedBefore] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been modified at or before this time.
   *
   * [pageToken] - The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.
   *
   * [processingStatus]
   *   Allowed values:
   *     complete - The raster collection has completed processing.
   *     failed - The raster collection has failed processing.
   *     notReady - The raster collection is not ready for processing.
   *     processing - The raster collection is processing.
   *     ready - The raster collection is ready for processing.
   *
   * [projectId] - The ID of a Maps Engine project, used to filter the response. To list all available projects with their IDs, send a Projects: list request. You can also find your project ID as the value of the DashboardPlace:cid URL parameter when signed in to mapsengine.google.com.
   *
   * [role] - The role parameter indicates that the response should only contain assets where the current user has the specified level of access.
   *   Allowed values:
   *     owner - The user can read, write and administer the asset.
   *     reader - The user can read the asset.
   *     writer - The user can read and write the asset.
   *
   * [search] - An unstructured search string used to filter the set of results based on asset metadata.
   *
   * [tags] - A comma separated list of tags. Returned assets will contain all the tags from the list.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<RasterCollectionsListResponse> list({core.String bbox, core.String createdAfter, core.String createdBefore, core.String creatorEmail, core.int maxResults, core.String modifiedAfter, core.String modifiedBefore, core.String pageToken, core.String processingStatus, core.String projectId, core.String role, core.String search, core.String tags, core.Map optParams}) {
    var url = "rasterCollections";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bbox != null) queryParams["bbox"] = bbox;
    if (createdAfter != null) queryParams["createdAfter"] = createdAfter;
    if (createdBefore != null) queryParams["createdBefore"] = createdBefore;
    if (creatorEmail != null) queryParams["creatorEmail"] = creatorEmail;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (modifiedAfter != null) queryParams["modifiedAfter"] = modifiedAfter;
    if (modifiedBefore != null) queryParams["modifiedBefore"] = modifiedBefore;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (processingStatus != null && !["complete", "failed", "notReady", "processing", "ready"].contains(processingStatus)) {
      paramErrors.add("Allowed values for processingStatus: complete, failed, notReady, processing, ready");
    }
    if (processingStatus != null) queryParams["processingStatus"] = processingStatus;
    if (projectId != null) queryParams["projectId"] = projectId;
    if (role != null && !["owner", "reader", "writer"].contains(role)) {
      paramErrors.add("Allowed values for role: owner, reader, writer");
    }
    if (role != null) queryParams["role"] = role;
    if (search != null) queryParams["search"] = search;
    if (tags != null) queryParams["tags"] = tags;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new RasterCollectionsListResponse.fromJson(data));
  }

  /**
   * Mutate a raster collection asset.
   *
   * [request] - RasterCollection to send in this request
   *
   * [id] - The ID of the raster collection.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> patch(RasterCollection request, core.String id, {core.Map optParams}) {
    var url = "rasterCollections/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Process a raster collection asset.
   *
   * [id] - The ID of the raster collection.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ProcessResponse> process(core.String id, {core.Map optParams}) {
    var url = "rasterCollections/{id}/process";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ProcessResponse.fromJson(data));
  }
}

class RasterCollectionsParentsResource_ {

  final Client _client;

  RasterCollectionsParentsResource_(Client client) :
      _client = client;

  /**
   * Return all parent ids of the specified raster collection.
   *
   * [id] - The ID of the raster collection whose parents will be listed.
   *
   * [maxResults] - The maximum number of items to include in a single response page. The maximum supported value is 50.
   *
   * [pageToken] - The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ParentsListResponse> list(core.String id, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "rasterCollections/{id}/parents";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ParentsListResponse.fromJson(data));
  }
}

class RasterCollectionsRastersResource_ {

  final Client _client;

  RasterCollectionsRastersResource_(Client client) :
      _client = client;

  /**
   * Remove rasters from an existing raster collection.

Up to 50 rasters can be included in a single batchDelete request. Each batchDelete request is atomic.
   *
   * [request] - RasterCollectionsRasterBatchDeleteRequest to send in this request
   *
   * [id] - The ID of the raster collection to which these rasters belong.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<RasterCollectionsRastersBatchDeleteResponse> batchDelete(RasterCollectionsRasterBatchDeleteRequest request, core.String id, {core.Map optParams}) {
    var url = "rasterCollections/{id}/rasters/batchDelete";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new RasterCollectionsRastersBatchDeleteResponse.fromJson(data));
  }

  /**
   * Add rasters to an existing raster collection. Rasters must be successfully processed in order to be added to a raster collection.

Up to 50 rasters can be included in a single batchInsert request. Each batchInsert request is atomic.
   *
   * [request] - RasterCollectionsRastersBatchInsertRequest to send in this request
   *
   * [id] - The ID of the raster collection to which these rasters belong.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<RasterCollectionsRastersBatchInsertResponse> batchInsert(RasterCollectionsRastersBatchInsertRequest request, core.String id, {core.Map optParams}) {
    var url = "rasterCollections/{id}/rasters/batchInsert";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new RasterCollectionsRastersBatchInsertResponse.fromJson(data));
  }

  /**
   * Return all rasters within a raster collection.
   *
   * [id] - The ID of the raster collection to which these rasters belong.
   *
   * [bbox] - A bounding box, expressed as "west,south,east,north". If set, only assets which intersect this bounding box will be returned.
   *
   * [createdAfter] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been created at or after this time.
   *
   * [createdBefore] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been created at or before this time.
   *
   * [creatorEmail] - An email address representing a user. Returned assets that have been created by the user associated with the provided email address.
   *
   * [maxResults] - The maximum number of items to include in a single response page. The maximum supported value is 100.
   *
   * [modifiedAfter] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been modified at or after this time.
   *
   * [modifiedBefore] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been modified at or before this time.
   *
   * [pageToken] - The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.
   *
   * [role] - The role parameter indicates that the response should only contain assets where the current user has the specified level of access.
   *   Allowed values:
   *     owner - The user can read, write and administer the asset.
   *     reader - The user can read the asset.
   *     writer - The user can read and write the asset.
   *
   * [search] - An unstructured search string used to filter the set of results based on asset metadata.
   *
   * [tags] - A comma separated list of tags. Returned assets will contain all the tags from the list.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<RasterCollectionsRastersListResponse> list(core.String id, {core.String bbox, core.String createdAfter, core.String createdBefore, core.String creatorEmail, core.int maxResults, core.String modifiedAfter, core.String modifiedBefore, core.String pageToken, core.String role, core.String search, core.String tags, core.Map optParams}) {
    var url = "rasterCollections/{id}/rasters";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bbox != null) queryParams["bbox"] = bbox;
    if (createdAfter != null) queryParams["createdAfter"] = createdAfter;
    if (createdBefore != null) queryParams["createdBefore"] = createdBefore;
    if (creatorEmail != null) queryParams["creatorEmail"] = creatorEmail;
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (modifiedAfter != null) queryParams["modifiedAfter"] = modifiedAfter;
    if (modifiedBefore != null) queryParams["modifiedBefore"] = modifiedBefore;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (role != null && !["owner", "reader", "writer"].contains(role)) {
      paramErrors.add("Allowed values for role: owner, reader, writer");
    }
    if (role != null) queryParams["role"] = role;
    if (search != null) queryParams["search"] = search;
    if (tags != null) queryParams["tags"] = tags;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new RasterCollectionsRastersListResponse.fromJson(data));
  }
}

class RastersResource_ {

  final Client _client;

  final RastersFilesResource_ files;
  final RastersParentsResource_ parents;

  RastersResource_(Client client) :
      _client = client,
      files = new RastersFilesResource_(client),
      parents = new RastersParentsResource_(client);

  /**
   * Delete a raster.
   *
   * [id] - The ID of the raster. Only the raster creator or project owner are permitted to delete. If the raster is included in a layer or mosaic, the request will fail. Remove it from all parents prior to deleting.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String id, {core.Map optParams}) {
    var url = "rasters/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Return metadata for a single raster.
   *
   * [id] - The ID of the raster.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Raster> get(core.String id, {core.Map optParams}) {
    var url = "rasters/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Raster.fromJson(data));
  }

  /**
   * Return all rasters readable by the current user.
   *
   * [projectId] - The ID of a Maps Engine project, used to filter the response. To list all available projects with their IDs, send a Projects: list request. You can also find your project ID as the value of the DashboardPlace:cid URL parameter when signed in to mapsengine.google.com.
   *
   * [bbox] - A bounding box, expressed as "west,south,east,north". If set, only assets which intersect this bounding box will be returned.
   *
   * [createdAfter] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been created at or after this time.
   *
   * [createdBefore] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been created at or before this time.
   *
   * [creatorEmail] - An email address representing a user. Returned assets that have been created by the user associated with the provided email address.
   *
   * [maxResults] - The maximum number of items to include in a single response page. The maximum supported value is 100.
   *
   * [modifiedAfter] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been modified at or after this time.
   *
   * [modifiedBefore] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been modified at or before this time.
   *
   * [pageToken] - The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.
   *
   * [processingStatus]
   *   Allowed values:
   *     complete - The raster has completed processing.
   *     failed - The raster has failed processing.
   *     notReady - The raster is not ready for processing.
   *     processing - The raster is processing.
   *     ready - The raster is ready for processing.
   *
   * [role] - The role parameter indicates that the response should only contain assets where the current user has the specified level of access.
   *   Allowed values:
   *     owner - The user can read, write and administer the asset.
   *     reader - The user can read the asset.
   *     writer - The user can read and write the asset.
   *
   * [search] - An unstructured search string used to filter the set of results based on asset metadata.
   *
   * [tags] - A comma separated list of tags. Returned assets will contain all the tags from the list.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<RastersListResponse> list(core.String projectId, {core.String bbox, core.String createdAfter, core.String createdBefore, core.String creatorEmail, core.int maxResults, core.String modifiedAfter, core.String modifiedBefore, core.String pageToken, core.String processingStatus, core.String role, core.String search, core.String tags, core.Map optParams}) {
    var url = "rasters";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bbox != null) queryParams["bbox"] = bbox;
    if (createdAfter != null) queryParams["createdAfter"] = createdAfter;
    if (createdBefore != null) queryParams["createdBefore"] = createdBefore;
    if (creatorEmail != null) queryParams["creatorEmail"] = creatorEmail;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (modifiedAfter != null) queryParams["modifiedAfter"] = modifiedAfter;
    if (modifiedBefore != null) queryParams["modifiedBefore"] = modifiedBefore;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (processingStatus != null && !["complete", "failed", "notReady", "processing", "ready"].contains(processingStatus)) {
      paramErrors.add("Allowed values for processingStatus: complete, failed, notReady, processing, ready");
    }
    if (processingStatus != null) queryParams["processingStatus"] = processingStatus;
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) queryParams["projectId"] = projectId;
    if (role != null && !["owner", "reader", "writer"].contains(role)) {
      paramErrors.add("Allowed values for role: owner, reader, writer");
    }
    if (role != null) queryParams["role"] = role;
    if (search != null) queryParams["search"] = search;
    if (tags != null) queryParams["tags"] = tags;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new RastersListResponse.fromJson(data));
  }

  /**
   * Mutate a raster asset.
   *
   * [request] - Raster to send in this request
   *
   * [id] - The ID of the raster.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> patch(Raster request, core.String id, {core.Map optParams}) {
    var url = "rasters/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Process a raster asset.
   *
   * [id] - The ID of the raster.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ProcessResponse> process(core.String id, {core.Map optParams}) {
    var url = "rasters/{id}/process";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ProcessResponse.fromJson(data));
  }

  /**
   * Create a skeleton raster asset for upload.
   *
   * [request] - Raster to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Raster> upload(Raster request, {core.Map optParams}) {
    var url = "rasters/upload";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Raster.fromJson(data));
  }
}

class RastersFilesResource_ {

  final Client _client;

  RastersFilesResource_(Client client) :
      _client = client;

  /**
   * Upload a file to a raster asset.
   *
   * [id] - The ID of the raster asset.
   *
   * [filename] - The file name of this uploaded file.
   *
   * [content] - Base64 Data of the file content to be uploaded
   *
   * [contentType] - MimeType of the file to be uploaded
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> insert(core.String id, core.String filename, {core.String content, core.String contentType, core.Map optParams}) {
    var url = "rasters/{id}/files";
    var uploadUrl = "/upload/mapsengine/v1/rasters/{id}/files";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (filename == null) paramErrors.add("filename is required");
    if (filename != null) queryParams["filename"] = filename;
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    if (content != null) {
      response = _client.upload(uploadUrl, "POST", null, content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    }
    return response;
  }
}

class RastersParentsResource_ {

  final Client _client;

  RastersParentsResource_(Client client) :
      _client = client;

  /**
   * Return all parent ids of the specified rasters.
   *
   * [id] - The ID of the rasters whose parents will be listed.
   *
   * [maxResults] - The maximum number of items to include in a single response page. The maximum supported value is 50.
   *
   * [pageToken] - The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ParentsListResponse> list(core.String id, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "rasters/{id}/parents";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ParentsListResponse.fromJson(data));
  }
}

class TablesResource_ {

  final Client _client;

  final TablesFeaturesResource_ features;
  final TablesFilesResource_ files;
  final TablesParentsResource_ parents;

  TablesResource_(Client client) :
      _client = client,
      features = new TablesFeaturesResource_(client),
      files = new TablesFilesResource_(client),
      parents = new TablesParentsResource_(client);

  /**
   * Create a table asset.
   *
   * [request] - Table to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Table> create(Table request, {core.Map optParams}) {
    var url = "tables";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Table.fromJson(data));
  }

  /**
   * Delete a table.
   *
   * [id] - The ID of the table. Only the table creator or project owner are permitted to delete. If the table is included in a layer, the request will fail. Remove it from all layers prior to deleting.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String id, {core.Map optParams}) {
    var url = "tables/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Return metadata for a particular table, including the schema.
   *
   * [id] - The ID of the table.
   *
   * [version]
   *   Allowed values:
   *     draft - The draft version.
   *     published - The published version.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Table> get(core.String id, {core.String version, core.Map optParams}) {
    var url = "tables/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (version != null && !["draft", "published"].contains(version)) {
      paramErrors.add("Allowed values for version: draft, published");
    }
    if (version != null) queryParams["version"] = version;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Table.fromJson(data));
  }

  /**
   * Return all tables readable by the current user.
   *
   * [bbox] - A bounding box, expressed as "west,south,east,north". If set, only assets which intersect this bounding box will be returned.
   *
   * [createdAfter] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been created at or after this time.
   *
   * [createdBefore] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been created at or before this time.
   *
   * [creatorEmail] - An email address representing a user. Returned assets that have been created by the user associated with the provided email address.
   *
   * [maxResults] - The maximum number of items to include in a single response page. The maximum supported value is 100.
   *
   * [modifiedAfter] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been modified at or after this time.
   *
   * [modifiedBefore] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been modified at or before this time.
   *
   * [pageToken] - The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.
   *
   * [processingStatus]
   *   Allowed values:
   *     complete - The table has completed processing.
   *     failed - The table has failed processing.
   *     notReady - The table is not ready for processing.
   *     processing - The table is processing.
   *     ready - The table is ready for processing.
   *
   * [projectId] - The ID of a Maps Engine project, used to filter the response. To list all available projects with their IDs, send a Projects: list request. You can also find your project ID as the value of the DashboardPlace:cid URL parameter when signed in to mapsengine.google.com.
   *
   * [role] - The role parameter indicates that the response should only contain assets where the current user has the specified level of access.
   *   Allowed values:
   *     owner - The user can read, write and administer the asset.
   *     reader - The user can read the asset.
   *     writer - The user can read and write the asset.
   *
   * [search] - An unstructured search string used to filter the set of results based on asset metadata.
   *
   * [tags] - A comma separated list of tags. Returned assets will contain all the tags from the list.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<TablesListResponse> list({core.String bbox, core.String createdAfter, core.String createdBefore, core.String creatorEmail, core.int maxResults, core.String modifiedAfter, core.String modifiedBefore, core.String pageToken, core.String processingStatus, core.String projectId, core.String role, core.String search, core.String tags, core.Map optParams}) {
    var url = "tables";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bbox != null) queryParams["bbox"] = bbox;
    if (createdAfter != null) queryParams["createdAfter"] = createdAfter;
    if (createdBefore != null) queryParams["createdBefore"] = createdBefore;
    if (creatorEmail != null) queryParams["creatorEmail"] = creatorEmail;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (modifiedAfter != null) queryParams["modifiedAfter"] = modifiedAfter;
    if (modifiedBefore != null) queryParams["modifiedBefore"] = modifiedBefore;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (processingStatus != null && !["complete", "failed", "notReady", "processing", "ready"].contains(processingStatus)) {
      paramErrors.add("Allowed values for processingStatus: complete, failed, notReady, processing, ready");
    }
    if (processingStatus != null) queryParams["processingStatus"] = processingStatus;
    if (projectId != null) queryParams["projectId"] = projectId;
    if (role != null && !["owner", "reader", "writer"].contains(role)) {
      paramErrors.add("Allowed values for role: owner, reader, writer");
    }
    if (role != null) queryParams["role"] = role;
    if (search != null) queryParams["search"] = search;
    if (tags != null) queryParams["tags"] = tags;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new TablesListResponse.fromJson(data));
  }

  /**
   * Mutate a table asset.
   *
   * [request] - Table to send in this request
   *
   * [id] - The ID of the table.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> patch(Table request, core.String id, {core.Map optParams}) {
    var url = "tables/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Process a table asset.
   *
   * [id] - The ID of the table.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ProcessResponse> process(core.String id, {core.Map optParams}) {
    var url = "tables/{id}/process";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ProcessResponse.fromJson(data));
  }

  /**
   * Create a placeholder table asset to which table files can be uploaded.
Once the placeholder has been created, files are uploaded to the https://www.googleapis.com/upload/mapsengine/v1/tables/table_id/files endpoint.
See Table Upload in the Developer's Guide or Table.files: insert in the reference documentation for more information.
   *
   * [request] - Table to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Table> upload(Table request, {core.Map optParams}) {
    var url = "tables/upload";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Table.fromJson(data));
  }
}

class TablesFeaturesResource_ {

  final Client _client;

  TablesFeaturesResource_(Client client) :
      _client = client;

  /**
   * Delete all features matching the given IDs.
   *
   * [request] - FeaturesBatchDeleteRequest to send in this request
   *
   * [id] - The ID of the table that contains the features to be deleted.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> batchDelete(FeaturesBatchDeleteRequest request, core.String id, {core.Map optParams}) {
    var url = "tables/{id}/features/batchDelete";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Append features to an existing table.

A single batchInsert request can create:

- Up to 50 features.
- A combined total of 10 000 vertices.
Feature limits are documented in the Supported data formats and limits article of the Google Maps Engine help center. Note that free and paid accounts have different limits.

For more information about inserting features, read Creating features in the Google Maps Engine developer's guide.
   *
   * [request] - FeaturesBatchInsertRequest to send in this request
   *
   * [id] - The ID of the table to append the features to.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> batchInsert(FeaturesBatchInsertRequest request, core.String id, {core.Map optParams}) {
    var url = "tables/{id}/features/batchInsert";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Update the supplied features.

A single batchPatch request can update:

- Up to 50 features.
- A combined total of 10 000 vertices.
Feature limits are documented in the Supported data formats and limits article of the Google Maps Engine help center. Note that free and paid accounts have different limits.

Feature updates use HTTP PATCH semantics:

- A supplied value replaces an existing value (if any) in that field.
- Omitted fields remain unchanged.
- Complex values in geometries and properties must be replaced as atomic units. For example, providing just the coordinates of a geometry is not allowed; the complete geometry, including type, must be supplied.
- Setting a property's value to null deletes that property.
For more information about updating features, read Updating features in the Google Maps Engine developer's guide.
   *
   * [request] - FeaturesBatchPatchRequest to send in this request
   *
   * [id] - The ID of the table containing the features to be patched.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> batchPatch(FeaturesBatchPatchRequest request, core.String id, {core.Map optParams}) {
    var url = "tables/{id}/features/batchPatch";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Return a single feature, given its ID.
   *
   * [tableId] - The ID of the table.
   *
   * [id] - The ID of the feature to get.
   *
   * [select] - A SQL-like projection clause used to specify returned properties. If this parameter is not included, all properties are returned.
   *
   * [version] - The table version to access. See Accessing Public Data for information.
   *   Allowed values:
   *     draft - The draft version.
   *     published - The published version.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Feature> get(core.String tableId, core.String id, {core.String select, core.String version, core.Map optParams}) {
    var url = "tables/{tableId}/features/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (select != null) queryParams["select"] = select;
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (version != null && !["draft", "published"].contains(version)) {
      paramErrors.add("Allowed values for version: draft, published");
    }
    if (version != null) queryParams["version"] = version;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Feature.fromJson(data));
  }

  /**
   * Return all features readable by the current user.
   *
   * [id] - The ID of the table to which these features belong.
   *
   * [include] - A comma separated list of optional data to include. Optional data available: schema.
   *
   * [intersects] - A geometry literal that specifies the spatial restriction of the query.
   *
   * [limit] - The total number of features to return from the query, irrespective of the number of pages.
   *
   * [maxResults] - The maximum number of items to include in the response, used for paging. The maximum supported value is 1000.
   *
   * [orderBy] - An SQL-like order by clause used to sort results. If this parameter is not included, the order of features is undefined.
   *
   * [pageToken] - The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.
   *
   * [select] - A SQL-like projection clause used to specify returned properties. If this parameter is not included, all properties are returned.
   *
   * [version] - The table version to access. See Accessing Public Data for information.
   *   Allowed values:
   *     draft - The draft version.
   *     published - The published version.
   *
   * [where] - An SQL-like predicate used to filter results.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<FeaturesListResponse> list(core.String id, {core.String include, core.String intersects, core.int limit, core.int maxResults, core.String orderBy, core.String pageToken, core.String select, core.String version, core.String where, core.Map optParams}) {
    var url = "tables/{id}/features";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (include != null) queryParams["include"] = include;
    if (intersects != null) queryParams["intersects"] = intersects;
    if (limit != null) queryParams["limit"] = limit;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (orderBy != null) queryParams["orderBy"] = orderBy;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (select != null) queryParams["select"] = select;
    if (version != null && !["draft", "published"].contains(version)) {
      paramErrors.add("Allowed values for version: draft, published");
    }
    if (version != null) queryParams["version"] = version;
    if (where != null) queryParams["where"] = where;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new FeaturesListResponse.fromJson(data));
  }
}

class TablesFilesResource_ {

  final Client _client;

  TablesFilesResource_(Client client) :
      _client = client;

  /**
   * Upload a file to a placeholder table asset. See Table Upload in the Developer's Guide for more information.
Supported file types are listed in the Supported data formats and limits article of the Google Maps Engine help center.
   *
   * [id] - The ID of the table asset.
   *
   * [filename] - The file name of this uploaded file.
   *
   * [content] - Base64 Data of the file content to be uploaded
   *
   * [contentType] - MimeType of the file to be uploaded
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> insert(core.String id, core.String filename, {core.String content, core.String contentType, core.Map optParams}) {
    var url = "tables/{id}/files";
    var uploadUrl = "/upload/mapsengine/v1/tables/{id}/files";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (filename == null) paramErrors.add("filename is required");
    if (filename != null) queryParams["filename"] = filename;
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    if (content != null) {
      response = _client.upload(uploadUrl, "POST", null, content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    }
    return response;
  }
}

class TablesParentsResource_ {

  final Client _client;

  TablesParentsResource_(Client client) :
      _client = client;

  /**
   * Return all parent ids of the specified table.
   *
   * [id] - The ID of the table whose parents will be listed.
   *
   * [maxResults] - The maximum number of items to include in a single response page. The maximum supported value is 50.
   *
   * [pageToken] - The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ParentsListResponse> list(core.String id, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "tables/{id}/parents";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ParentsListResponse.fromJson(data));
  }
}

