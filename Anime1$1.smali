.class Lcom/github/catvod/spider/Anime1$1;
.super Lcom/github/catvod/spider/merge1/Ok$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/catvod/spider/Anime1;->playerContent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic F:Lorg/json/JSONObject;

.field final synthetic Vx:Lcom/github/catvod/spider/Anime1;


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/Anime1;Lorg/json/JSONObject;)V
    .registers 3

    iput-object p1, p0, Lcom/github/catvod/spider/Anime1$1;->Vx:Lcom/github/catvod/spider/Anime1;

    iput-object p2, p0, Lcom/github/catvod/spider/Anime1$1;->F:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/Ok$m;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/lang/Exception;)V
    .registers 3

    return-void
.end method

.method public bridge synthetic onParseResponse(Lokhttp3/Call;Lokhttp3/Response;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/Anime1$1;->onParseResponse(Lokhttp3/Call;Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onParseResponse(Lokhttp3/Call;Lokhttp3/Response;)Ljava/lang/String;
    .registers 9

    const-string p1, ";"

    .line 2
    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_17
    const/4 v3, 0x3

    if-ge v2, v3, :cond_68

    .line 5
    iget-object v3, p0, Lcom/github/catvod/spider/Anime1$1;->Vx:Lcom/github/catvod/spider/Anime1;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/github/catvod/spider/Anime1$1;->Vx:Lcom/github/catvod/spider/Anime1;

    invoke-static {v5}, Lcom/github/catvod/spider/Anime1;->pR(Lcom/github/catvod/spider/Anime1;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "set-cookie"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/github/catvod/spider/Anime1;->F(Lcom/github/catvod/spider/Anime1;Ljava/lang/String;)Ljava/lang/String;

    const/4 v3, 0x2

    if-ge v2, v3, :cond_65

    .line 6
    iget-object v3, p0, Lcom/github/catvod/spider/Anime1$1;->Vx:Lcom/github/catvod/spider/Anime1;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/github/catvod/spider/Anime1$1;->Vx:Lcom/github/catvod/spider/Anime1;

    invoke-static {v5}, Lcom/github/catvod/spider/Anime1;->pR(Lcom/github/catvod/spider/Anime1;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/github/catvod/spider/Anime1;->F(Lcom/github/catvod/spider/Anime1;Ljava/lang/String;)Ljava/lang/String;

    :cond_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 7
    :cond_68
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_70} :catch_71

    return-object p1

    :catch_71
    const-string p1, ""

    return-object p1
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/Anime1$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .registers 5

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "s"

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "src"

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/github/catvod/spider/Anime1$1;->Vx:Lcom/github/catvod/spider/Anime1;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/github/catvod/spider/Anime1;->Vx(Lcom/github/catvod/spider/Anime1;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/github/catvod/spider/Anime1$1;->F:Lorg/json/JSONObject;

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3c} :catch_3c

    :catch_3c
    return-void
.end method
