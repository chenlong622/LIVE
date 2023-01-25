.class public Lcom/github/catvod/spider/Auete;
.super Lcom/github/catvod/crawler/Spider;
.source "SourceFile"


# instance fields
.field private B:Ljava/util/regex/Pattern;

.field private Pd:Ljava/util/regex/Pattern;

.field private W:Ljava/util/regex/Pattern;

.field private u:Lorg/json/JSONObject;

.field private u6:Ljava/util/regex/Pattern;

.field private ue:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    nop

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    move-object/from16 v1, p0

    .line 1
    invoke-direct {v1}, Lcom/github/catvod/crawler/Spider;-><init>()V

    const-string v0, "/(\\w+)/index.html"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, v1, Lcom/github/catvod/spider/Auete;->B:Ljava/util/regex/Pattern;

    const-string v0, "/(\\w+/\\w+/\\w+)/"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, v1, Lcom/github/catvod/spider/Auete;->W:Ljava/util/regex/Pattern;

    const-string v0, "(/\\w+/\\w+/\\w+/play-\\d+-\\d+.html)"

    .line 4
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, v1, Lcom/github/catvod/spider/Auete;->Pd:Ljava/util/regex/Pattern;

    const-string v0, "/index(\\d+).html"

    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, v1, Lcom/github/catvod/spider/Auete;->u6:Ljava/util/regex/Pattern;

    return-void
.end method

.method static synthetic ue(Lcom/github/catvod/spider/Auete;)Lorg/json/JSONObject;
    .registers 5

    move-object/from16 v0, p0

    .line 1
    iget-object v0, v0, Lcom/github/catvod/spider/Auete;->ue:Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public categoryContent(Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Ljava/lang/String;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move/from16 v19, p3

    move-object/from16 p0, p4

    move-object/from16 v1, v16

    move-object/from16 v0, v17

    move-object/from16 v2, v18

    move-object/from16 v3, p0

    const-string v4, ""

    const-string v5, "https://auete.com/"

    if-eqz v3, :cond_6d

    .line 1
    :try_start_18
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_6d

    .line 2
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v7, v4

    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7c

    .line 3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 4
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_5d

    .line 5
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_5d

    const-string v8, " "

    if-eq v7, v8, :cond_5d

    .line 6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_27

    .line 7
    :cond_5d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_27

    .line 8
    :cond_6d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_7c
    const-string v0, "1"

    .line 9
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/index.html"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_af

    .line 11
    :cond_96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/index"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".html"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    :goto_af
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/Auete;->u(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/github/catvod/spider/merge1/Vf;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/JD;->ue(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/vR;

    move-result-object v3

    .line 14
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "ul.pagination li"

    .line 15
    invoke-virtual {v3, v6}, Lcom/github/catvod/spider/merge1/Hq;->B1(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/ex;

    move-result-object v6

    .line 16
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_ca} :catch_1f6

    const-string v8, "ul.threadlist li"

    const-string v9, "a"

    const-string v10, "href"

    const/4 v12, 0x1

    if-nez v7, :cond_da

    .line 17
    :try_start_d3
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v7, v2

    goto/16 :goto_152

    :cond_da
    const/4 v2, -0x1

    const/4 v7, -0x1

    const/4 v13, 0x0

    .line 18
    :goto_dd
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_151

    .line 19
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/github/catvod/spider/merge1/Hq;

    .line 20
    invoke-virtual {v14, v9}, Lcom/github/catvod/spider/merge1/Hq;->O(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/Hq;

    move-result-object v15

    if-nez v15, :cond_f0

    goto :goto_14c

    .line 21
    :cond_f0
    invoke-virtual {v15}, Lcom/github/catvod/spider/merge1/Hq;->pE()Ljava/lang/String;

    move-result-object v11

    if-ne v7, v2, :cond_125

    const-string v2, "active"

    .line 22
    invoke-virtual {v14, v2}, Lcom/github/catvod/spider/merge1/Hq;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_125

    .line 23
    iget-object v2, v1, Lcom/github/catvod/spider/Auete;->u6:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v10}, Lcom/github/catvod/spider/merge1/vk;->Pd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_117

    .line 25
    invoke-virtual {v2, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_126

    .line 26
    :cond_117
    invoke-virtual {v3, v8}, Lcom/github/catvod/spider/merge1/Hq;->B1(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/ex;

    move-result-object v2

    .line 27
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_123

    const/4 v2, 0x1

    goto :goto_126

    :cond_123
    const/4 v2, 0x0

    goto :goto_126

    :cond_125
    move v2, v7

    :goto_126
    const-string v7, "尾页"

    .line 28
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14b

    .line 29
    iget-object v6, v1, Lcom/github/catvod/spider/Auete;->u6:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v10}, Lcom/github/catvod/spider/merge1/vk;->Pd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 30
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_149

    .line 31
    invoke-virtual {v6, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v7, v2

    move v2, v6

    goto :goto_152

    :cond_149
    move v7, v2

    goto :goto_151

    :cond_14b
    move v7, v2

    :goto_14c
    add-int/lit8 v13, v13, 0x1

    const/4 v2, -0x1

    goto/16 :goto_dd

    :cond_151
    :goto_151
    const/4 v2, 0x0

    .line 32
    :goto_152
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    const-string v11, "没有找到您想要的结果哦"

    .line 33
    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1cc

    .line 34
    invoke-virtual {v3, v8}, Lcom/github/catvod/spider/merge1/Hq;->B1(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/ex;

    move-result-object v0

    const/4 v11, 0x0

    .line 35
    :goto_164
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v11, v3, :cond_1cc

    .line 36
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge1/Hq;

    const-string v8, "h2 a"

    .line 37
    invoke-virtual {v3, v8}, Lcom/github/catvod/spider/merge1/Hq;->O(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/Hq;

    move-result-object v8

    const-string v13, "title"

    invoke-virtual {v8, v13}, Lcom/github/catvod/spider/merge1/vk;->Pd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v13, "a img"

    .line 38
    invoke-virtual {v3, v13}, Lcom/github/catvod/spider/merge1/Hq;->O(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/Hq;

    move-result-object v13

    const-string v14, "src"

    invoke-virtual {v13, v14}, Lcom/github/catvod/spider/merge1/vk;->Pd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "a button"

    .line 39
    invoke-virtual {v3, v14}, Lcom/github/catvod/spider/merge1/Hq;->O(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/Hq;

    move-result-object v14

    invoke-virtual {v14}, Lcom/github/catvod/spider/merge1/Hq;->pE()Ljava/lang/String;

    move-result-object v14

    .line 40
    iget-object v15, v1, Lcom/github/catvod/spider/Auete;->W:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v9}, Lcom/github/catvod/spider/merge1/Hq;->O(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/Hq;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/github/catvod/spider/merge1/vk;->Pd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 41
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-nez v15, :cond_1a7

    goto :goto_1c7

    .line 42
    :cond_1a7
    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 43
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    const-string v12, "vod_id"

    .line 44
    invoke-virtual {v15, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "vod_name"

    .line 45
    invoke-virtual {v15, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "vod_pic"

    .line 46
    invoke-virtual {v15, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "vod_remarks"

    .line 47
    invoke-virtual {v15, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    invoke-virtual {v6, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_1c7
    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    goto/16 :goto_164

    :cond_1cc
    const-string v0, "page"

    .line 49
    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "pagecount"

    .line 50
    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "limit"

    const/16 v3, 0x14

    .line 51
    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "total"

    const/4 v7, 0x1

    if-gt v2, v7, :cond_1e7

    .line 52
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    goto :goto_1e9

    :cond_1e7
    mul-int/lit8 v2, v2, 0x14

    :goto_1e9
    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "list"

    .line 53
    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1f5
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_1f5} :catch_1f6

    return-object v0

    :catch_1f6
    move-exception v0

    .line 55
    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    return-object v4
.end method

.method public detailContent(Ljava/util/List;)Ljava/lang/String;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v24, p0

    move-object/from16 v25, p1

    move-object/from16 v1, v24

    move-object/from16 v0, v25

    const-string v2, "$$$"

    const-string v3, "href"

    const-string v4, "div.cover a"

    const-string v5, "div.message>p"

    const-string v6, ""

    .line 1
    :try_start_12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://auete.com/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2
    invoke-virtual {v1, v7}, Lcom/github/catvod/spider/Auete;->u(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/github/catvod/spider/merge1/Vf;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/github/catvod/spider/merge1/JD;->ue(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/vR;

    move-result-object v7

    .line 3
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 4
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 5
    invoke-virtual {v7, v4}, Lcom/github/catvod/spider/merge1/Hq;->O(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/Hq;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/github/catvod/spider/merge1/vk;->Pd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 6
    invoke-virtual {v7, v4}, Lcom/github/catvod/spider/merge1/Hq;->O(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/Hq;

    move-result-object v4

    const-string v12, "title"

    invoke-virtual {v4, v12}, Lcom/github/catvod/spider/merge1/vk;->Pd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v7, v5}, Lcom/github/catvod/spider/merge1/Hq;->B1(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/ex;

    move-result-object v12

    .line 8
    invoke-virtual {v7, v5}, Lcom/github/catvod/spider/merge1/Hq;->B1(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/ex;

    move-result-object v13

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v14, 0x1

    sub-int/2addr v12, v14

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/github/catvod/spider/merge1/Hq;

    invoke-virtual {v12}, Lcom/github/catvod/spider/merge1/Hq;->pE()Ljava/lang/String;

    move-result-object v12

    .line 9
    invoke-virtual {v7, v5}, Lcom/github/catvod/spider/merge1/Hq;->B1(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/ex;

    move-result-object v5

    move-object v15, v6

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    const/4 v13, 0x0

    .line 10
    :goto_7f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v8, v21, -0x2

    if-ge v13, v8, :cond_12e

    .line 11
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/catvod/spider/merge1/Hq;

    .line 12
    invoke-virtual {v8}, Lcom/github/catvod/spider/merge1/Hq;->pE()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v22, v5

    const-string v5, "分类"

    .line 13
    invoke-virtual {v14, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_99} :catch_27a

    move-object/from16 v23, v6

    const-string v6, ": "

    if-eqz v5, :cond_b0

    .line 14
    :try_start_9f
    invoke-virtual {v8}, Lcom/github/catvod/spider/merge1/Hq;->pE()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v15, v5, v6
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_aa} :catch_ac

    goto/16 :goto_124

    :catch_ac
    move-object/from16 v15, v23

    goto/16 :goto_124

    :cond_b0
    :try_start_b0
    const-string v5, "年份"

    .line 15
    invoke-virtual {v14, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b6} :catch_278

    if-eqz v5, :cond_c9

    .line 16
    :try_start_b8
    invoke-virtual {v8}, Lcom/github/catvod/spider/merge1/Hq;->pE()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v16, v5, v6
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_c3} :catch_c5

    goto/16 :goto_124

    :catch_c5
    move-object/from16 v16, v23

    goto/16 :goto_124

    :cond_c9
    :try_start_c9
    const-string v5, "地区"

    .line 17
    invoke-virtual {v14, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_cf} :catch_278

    if-eqz v5, :cond_e0

    .line 18
    :try_start_d1
    invoke-virtual {v8}, Lcom/github/catvod/spider/merge1/Hq;->pE()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v17, v5, v6
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_dc} :catch_dd

    goto :goto_124

    :catch_dd
    move-object/from16 v17, v23

    goto :goto_124

    :cond_e0
    :try_start_e0
    const-string v5, "影片备注"

    .line 19
    invoke-virtual {v14, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_e6} :catch_278

    if-eqz v5, :cond_f7

    .line 20
    :try_start_e8
    invoke-virtual {v8}, Lcom/github/catvod/spider/merge1/Hq;->pE()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v18, v5, v6
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_f3} :catch_f4

    goto :goto_124

    :catch_f4
    move-object/from16 v18, v23

    goto :goto_124

    :cond_f7
    :try_start_f7
    const-string v5, "导演"

    .line 21
    invoke-virtual {v14, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_fd} :catch_278

    if-eqz v5, :cond_10e

    .line 22
    :try_start_ff
    invoke-virtual {v8}, Lcom/github/catvod/spider/merge1/Hq;->pE()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v20, v5, v6
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_10a} :catch_10b

    goto :goto_124

    :catch_10b
    move-object/from16 v20, v23

    goto :goto_124

    :cond_10e
    :try_start_10e
    const-string v5, "主演"

    .line 23
    invoke-virtual {v14, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_114} :catch_278

    if-eqz v5, :cond_124

    .line 24
    :try_start_116
    invoke-virtual {v8}, Lcom/github/catvod/spider/merge1/Hq;->pE()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v19, v5, v6
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_121} :catch_122

    goto :goto_124

    :catch_122
    move-object/from16 v19, v23

    :cond_124
    :goto_124
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    const/4 v8, 0x0

    const/4 v14, 0x1

    goto/16 :goto_7f

    :cond_12e
    move-object/from16 v23, v6

    :try_start_130
    const-string v5, "vod_id"

    const/4 v6, 0x0

    .line 25
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "vod_name"

    .line 26
    invoke-virtual {v10, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "vod_pic"

    .line 27
    invoke-virtual {v10, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type_name"

    .line 28
    invoke-virtual {v10, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "vod_year"

    move-object/from16 v6, v16

    .line 29
    invoke-virtual {v10, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "vod_area"

    move-object/from16 v6, v17

    .line 30
    invoke-virtual {v10, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "vod_remarks"

    move-object/from16 v6, v18

    .line 31
    invoke-virtual {v10, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "vod_actor"

    move-object/from16 v6, v19

    .line 32
    invoke-virtual {v10, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "vod_director"

    move-object/from16 v6, v20

    .line 33
    invoke-virtual {v10, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "vod_content"

    .line 34
    invoke-virtual {v10, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    new-instance v0, Ljava/util/TreeMap;

    new-instance v4, Lcom/github/catvod/spider/Auete$1;

    invoke-direct {v4, v1}, Lcom/github/catvod/spider/Auete$1;-><init>(Lcom/github/catvod/spider/Auete;)V

    invoke-direct {v0, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const-string v4, "div#player_list>h2"

    .line 36
    invoke-virtual {v7, v4}, Lcom/github/catvod/spider/merge1/Hq;->B1(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/ex;

    move-result-object v4

    const-string v5, "div#player_list>ul"

    .line 37
    invoke-virtual {v7, v5}, Lcom/github/catvod/spider/merge1/Hq;->B1(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/ex;

    move-result-object v5

    const/4 v6, 0x0

    .line 38
    :goto_188
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_246

    .line 39
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/catvod/spider/merge1/Hq;

    .line 40
    invoke-virtual {v7}, Lcom/github/catvod/spider/merge1/Hq;->pE()Ljava/lang/String;

    move-result-object v7

    const-string v8, "』"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const-string v8, "："

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    .line 41
    iget-object v11, v1, Lcom/github/catvod/spider/Auete;->ue:Lorg/json/JSONObject;

    invoke-virtual {v11}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v11

    :cond_1b0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1d0

    .line 42
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 43
    iget-object v13, v1, Lcom/github/catvod/spider/Auete;->ue:Lorg/json/JSONObject;

    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "sh"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b0

    const/4 v7, 0x1

    goto :goto_1d2

    :cond_1d0
    move-object v12, v7

    const/4 v7, 0x0

    :goto_1d2
    if-nez v7, :cond_1d6

    goto/16 :goto_242

    .line 44
    :cond_1d6
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/catvod/spider/merge1/Hq;

    const-string v11, "li > a"

    invoke-virtual {v7, v11}, Lcom/github/catvod/spider/merge1/Hq;->B1(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/ex;

    move-result-object v7

    .line 45
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    .line 46
    :goto_1e8
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_229

    .line 47
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/github/catvod/spider/merge1/Hq;

    .line 48
    iget-object v15, v1, Lcom/github/catvod/spider/Auete;->Pd:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v3}, Lcom/github/catvod/spider/merge1/vk;->Pd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 49
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-nez v15, :cond_205

    goto :goto_225

    :cond_205
    const/4 v15, 0x1

    .line 50
    invoke-virtual {v8, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 51
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/github/catvod/spider/merge1/Hq;->pE()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "$"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_225
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x0

    goto :goto_1e8

    .line 52
    :cond_229
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_236

    const-string v7, "#"

    .line 53
    invoke-static {v7, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    goto :goto_238

    :cond_236
    move-object/from16 v7, v23

    .line 54
    :goto_238
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_23f

    goto :goto_242

    .line 55
    :cond_23f
    invoke-interface {v0, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_242
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_188

    .line 56
    :cond_246
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_266

    .line 57
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "vod_play_from"

    .line 59
    invoke-virtual {v10, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "vod_play_url"

    .line 60
    invoke-virtual {v10, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    :cond_266
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 62
    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "list"

    .line 63
    invoke-virtual {v9, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_277
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_277} :catch_278

    return-object v0

    :catch_278
    move-exception v0

    goto :goto_27d

    :catch_27a
    move-exception v0

    move-object/from16 v23, v6

    .line 65
    :goto_27d
    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    return-object v23
.end method

.method public homeContent(Z)Ljava/lang/String;
    .registers 17

    move-object/from16 v11, p0

    move/from16 v12, p1

    const-string v0, "https://auete.com"

    .line 1
    :try_start_6
    invoke-virtual {v11, v0}, Lcom/github/catvod/spider/Auete;->u(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge1/Vf;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge1/JD;->ue(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/vR;

    move-result-object v0

    const-string v1, "ul[class=\'navbar-nav mr-auto\']> li a"

    .line 2
    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/Hq;->B1(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/ex;

    move-result-object v1

    .line 3
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_25} :catch_130

    const-string v4, "href"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_8e

    :try_start_2b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge1/Hq;

    .line 5
    invoke-virtual {v3}, Lcom/github/catvod/spider/merge1/Hq;->pE()Ljava/lang/String;

    move-result-object v7

    const-string v8, "电影"

    .line 6
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5d

    const-string v8, "电视剧"

    .line 7
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5d

    const-string v8, "综艺"

    .line 8
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5d

    const-string v8, "动漫"

    .line 9
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5d

    const-string v8, "其他"

    .line 10
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5e

    :cond_5d
    const/4 v5, 0x1

    :cond_5e
    if-eqz v5, :cond_21

    .line 11
    iget-object v5, v11, Lcom/github/catvod/spider/Auete;->B:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v4}, Lcom/github/catvod/spider/merge1/vk;->Pd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 12
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_72

    goto/16 :goto_21

    .line 13
    :cond_72
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 14
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "type_id"

    .line 15
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "type_name"

    .line 16
    invoke-virtual {v4, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_21

    .line 18
    :cond_8e
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz v12, :cond_9c

    const-string v12, "filters"

    .line 19
    iget-object v3, v11, Lcom/github/catvod/spider/Auete;->u:Lorg/json/JSONObject;

    invoke-virtual {v1, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9c
    const-string v12, "class"

    .line 20
    invoke-virtual {v1, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_a1} :catch_130

    :try_start_a1
    const-string v12, "ul.threadlist"

    .line 21
    invoke-virtual {v0, v12}, Lcom/github/catvod/spider/merge1/Hq;->B1(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/ex;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/github/catvod/spider/merge1/Hq;

    const-string v0, "li"

    .line 22
    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge1/Hq;->B1(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/ex;

    move-result-object v12

    .line 23
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 24
    :goto_b8
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_121

    .line 25
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge1/Hq;

    const-string v3, "h2 a"

    .line 26
    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge1/Hq;->O(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/Hq;

    move-result-object v3

    const-string v7, "title"

    invoke-virtual {v3, v7}, Lcom/github/catvod/spider/merge1/vk;->Pd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "a img"

    .line 27
    invoke-virtual {v2, v7}, Lcom/github/catvod/spider/merge1/Hq;->O(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/Hq;

    move-result-object v7

    const-string v8, "src"

    invoke-virtual {v7, v8}, Lcom/github/catvod/spider/merge1/vk;->Pd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "a button"

    .line 28
    invoke-virtual {v2, v8}, Lcom/github/catvod/spider/merge1/Hq;->O(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/Hq;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/catvod/spider/merge1/Hq;->pE()Ljava/lang/String;

    move-result-object v8

    .line 29
    iget-object v9, v11, Lcom/github/catvod/spider/Auete;->W:Ljava/util/regex/Pattern;

    const-string v10, "a"

    invoke-virtual {v2, v10}, Lcom/github/catvod/spider/merge1/Hq;->O(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/Hq;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/github/catvod/spider/merge1/vk;->Pd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 30
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_fd

    goto :goto_11d

    .line 31
    :cond_fd
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 32
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "vod_id"

    .line 33
    invoke-virtual {v9, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "vod_name"

    .line 34
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "vod_pic"

    .line 35
    invoke-virtual {v9, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "vod_remarks"

    .line 36
    invoke-virtual {v9, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_11d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_b8

    :cond_121
    const-string v12, "list"

    .line 38
    invoke-virtual {v1, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_126} :catch_127

    goto :goto_12b

    :catch_127
    move-exception v12

    .line 39
    :try_start_128
    invoke-static {v12}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    .line 40
    :goto_12b
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_12f} :catch_130

    return-object v12

    :catch_130
    move-exception v12

    .line 41
    invoke-static {v12}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    const-string v12, ""

    return-object v12
.end method

.method public init(Landroid/content/Context;)V
    .registers 7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    invoke-super {v1, v2}, Lcom/github/catvod/crawler/Spider;->init(Landroid/content/Context;)V

    .line 2
    :try_start_7
    new-instance v2, Lorg/json/JSONObject;

    const-string v0, "{\"dp\":{\"sh\":\"云播A线\",\"pu\":\"\",\"sn\":0,\"or\":999},\"cyun\":{\"sh\":\"云播C线\",\"pu\":\"\",\"sn\":0,\"or\":999},\"dbm3u8\":{\"sh\":\"云播D线\",\"pu\":\"\",\"sn\":0,\"or\":999},\"i8i\":{\"sh\":\"云播E线\",\"pu\":\"\",\"sn\":0,\"or\":999},\"m3u8hd\":{\"sh\":\"云播F线\",\"pu\":\"https://auete.com/api/?url=\",\"sn\":1,\"or\":999},\"languang\":{\"sh\":\"云播G线\",\"pu\":\"https://auete.com/api/?url=\",\"sn\":1,\"or\":999},\"hyun\":{\"sh\":\"云播H线\",\"pu\":\"https://auete.com/api/?url=\",\"sn\":1,\"or\":999},\"kyun\":{\"sh\":\"云播K线\",\"pu\":\"https://auete.com/api/?url=\",\"sn\":1,\"or\":999},\"bpyueyu\":{\"sh\":\"云播粤语\",\"pu\":\"\",\"sn\":0,\"or\":999},\"bpguoyu\":{\"sh\":\"云播国语\",\"pu\":\"\",\"sn\":0,\"or\":999}}"

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/github/catvod/spider/Auete;->ue:Lorg/json/JSONObject;

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    const-string v0, "{\"Movie\":[{\"key\":0,\"name\":\"分类\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"喜剧片\",\"v\":\"xjp\"},{\"n\":\"动作片\",\"v\":\"dzp\"},{\"n\":\"爱情片\",\"v\":\"aqp\"},{\"n\":\"科幻片\",\"v\":\"khp\"},{\"n\":\"恐怖片\",\"v\":\"kbp\"},{\"n\":\"惊悚片\",\"v\":\"jsp\"},{\"n\":\"战争片\",\"v\":\"zzp\"},{\"n\":\"剧情片\",\"v\":\"jqp\"}]}],\"Tv\":[{\"key\":0,\"name\":\"分类\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"美剧\",\"v\":\"oumei\"},{\"n\":\"韩剧\",\"v\":\"hanju\"},{\"n\":\"日剧\",\"v\":\"riju\"},{\"n\":\"泰剧\",\"v\":\"yataiju\"},{\"n\":\"网剧\",\"v\":\"wangju\"},{\"n\":\"台剧\",\"v\":\"taiju\"},{\"n\":\"国产\",\"v\":\"neidi\"},{\"n\":\"港剧\",\"v\":\"tvbgj\"}]}],\"Zy\":[{\"key\":0,\"name\":\"分类\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"国综\",\"v\":\"guozong\"},{\"n\":\"韩综\",\"v\":\"hanzong\"},{\"n\":\"美综\",\"v\":\"meizong\"}]}],\"Dm\":[{\"key\":0,\"name\":\"分类\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"动画\",\"v\":\"donghua\"},{\"n\":\"日漫\",\"v\":\"riman\"},{\"n\":\"国漫\",\"v\":\"guoman\"},{\"n\":\"美漫\",\"v\":\"meiman\"}]}],\"qita\":[{\"key\":0,\"name\":\"分类\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"纪录片\",\"v\":\"Jlp\"},{\"n\":\"经典片\",\"v\":\"Jdp\"},{\"n\":\"经典剧\",\"v\":\"Jdj\"},{\"n\":\"网大电影\",\"v\":\"wlp\"},{\"n\":\"国产老电影\",\"v\":\"laodianying\"}]}]}"

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/github/catvod/spider/Auete;->u:Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception v2

    .line 4
    invoke-static {v2}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    :goto_1e
    return-void
.end method

.method public playerContent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, p2

    move-object/from16 v21, p3

    move-object/from16 v1, v18

    const-string v0, "="

    const-string v2, ""

    .line 1
    :try_start_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://auete.com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-virtual {v1, v3}, Lcom/github/catvod/spider/Auete;->u(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/github/catvod/spider/merge1/Vf;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/github/catvod/spider/merge1/JD;->ue(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/vR;

    move-result-object v3

    const-string v4, "div>script"

    invoke-virtual {v3, v4}, Lcom/github/catvod/spider/merge1/Hq;->B1(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/ex;

    move-result-object v3

    .line 3
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v5, v2

    move-object v6, v5

    .line 5
    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14d

    .line 6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/catvod/spider/merge1/Hq;

    invoke-virtual {v7}, Lcom/github/catvod/spider/merge1/Hq;->Q()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "var"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 7
    array-length v8, v7
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_59} :catch_152

    const/4 v10, 0x0

    :goto_5a
    const-string v11, "header"

    const-string v12, "url"

    const-string v13, "playUrl"

    const-string v14, "parse"

    if-ge v10, v8, :cond_121

    .line 8
    :try_start_64
    aget-object v15, v7, v10

    .line 9
    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_110

    const-string v9, "now"

    .line 10
    invoke-virtual {v15, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_72} :catch_152

    move-object/from16 v20, v3

    const-string v3, ";"

    move-object/from16 v21, v7

    const-string v7, "\""

    const/16 v16, 0x1

    if-eqz v9, :cond_f5

    .line 11
    :try_start_7e
    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v16

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "base64"

    .line 12
    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b6

    .line 13
    new-instance v9, Ljava/lang/String;

    move/from16 v17, v8

    const-string v8, "\\("

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v16

    const-string v8, "\\)"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v6, v6, v8

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6, v8}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v6

    invoke-direct {v9, v6}, Ljava/lang/String;-><init>([B)V

    move-object v6, v9

    goto :goto_b8

    :cond_b6
    move/from16 v17, v8

    :goto_b8
    const-string v8, "http"

    .line 14
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ce

    const/4 v8, 0x0

    .line 15
    invoke-virtual {v4, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 16
    invoke-virtual {v4, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    invoke-virtual {v4, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    invoke-virtual {v4, v11, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f7

    :cond_ce
    const-string v8, "m3u8"

    .line 19
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_f7

    const/4 v8, 0x0

    .line 20
    invoke-virtual {v4, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    invoke-virtual {v4, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "https://datas-s8pwfqdu9yystn90fb----------------cache.haozhansou.com/"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    invoke-virtual {v4, v11, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f8

    :cond_f5
    move/from16 v17, v8

    :cond_f7
    :goto_f7
    const/4 v8, 0x0

    :goto_f8
    const-string v9, "pn"

    .line 24
    invoke-virtual {v15, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_117

    .line 25
    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v16

    invoke-virtual {v5, v7, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto :goto_117

    :cond_110
    move-object/from16 v20, v3

    move-object/from16 v21, v7

    move/from16 v17, v8

    const/4 v8, 0x0

    :cond_117
    :goto_117
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v20

    move-object/from16 v7, v21

    move/from16 v8, v17

    goto/16 :goto_5a

    :cond_121
    move-object/from16 v20, v3

    .line 26
    iget-object v3, v1, Lcom/github/catvod/spider/Auete;->ue:Lorg/json/JSONObject;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_149

    .line 27
    iget-object v3, v1, Lcom/github/catvod/spider/Auete;->ue:Lorg/json/JSONObject;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v7, "pu"

    .line 28
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "sn"

    .line 29
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    invoke-virtual {v4, v13, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    invoke-virtual {v4, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    invoke-virtual {v4, v11, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_149
    move-object/from16 v3, v20

    goto/16 :goto_3e

    .line 33
    :cond_14d
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_151} :catch_152

    return-object v0

    :catch_152
    move-exception v0

    .line 34
    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public searchContent(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 16

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    const-string v11, "href"

    .line 1
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://auete.com/search.php?searchword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2
    invoke-virtual {v9, v10}, Lcom/github/catvod/spider/Auete;->u(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/github/catvod/spider/merge1/Vf;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/github/catvod/spider/merge1/JD;->ue(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/vR;

    move-result-object v10

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "div.card-body>ul>li.media"

    .line 5
    invoke-virtual {v10, v2}, Lcom/github/catvod/spider/merge1/Hq;->B1(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/ex;

    move-result-object v10

    const/4 v2, 0x0

    .line 6
    :goto_3a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_c3

    .line 7
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge1/Hq;

    const-string v4, "div.media-body>div.subject>a>span"

    .line 8
    invoke-virtual {v3, v4}, Lcom/github/catvod/spider/merge1/Hq;->B1(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/ex;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge1/ex;->jw()Ljava/lang/String;

    move-result-object v4

    const-string v5, "div.media-body>div.d-flex>div.text-muted>span"

    .line 9
    invoke-virtual {v3, v5}, Lcom/github/catvod/spider/merge1/Hq;->O(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/Hq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge1/Hq;->pE()Ljava/lang/String;

    move-result-object v5

    .line 10
    iget-object v6, v9, Lcom/github/catvod/spider/Auete;->W:Ljava/util/regex/Pattern;

    const-string v7, "div.media-body>div.subject>a"

    invoke-virtual {v3, v7}, Lcom/github/catvod/spider/merge1/Hq;->B1(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/ex;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/github/catvod/spider/merge1/ex;->ue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_72

    goto/16 :goto_bf

    :cond_72
    const/4 v6, 0x1

    .line 12
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 13
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 14
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://auete.com/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 15
    invoke-virtual {v9, v7}, Lcom/github/catvod/spider/Auete;->u(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/github/catvod/spider/merge1/Vf;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/github/catvod/spider/merge1/JD;->ue(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/vR;

    move-result-object v7

    const-string v8, "div.cover a"

    .line 16
    invoke-virtual {v7, v8}, Lcom/github/catvod/spider/merge1/Hq;->O(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/Hq;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/github/catvod/spider/merge1/vk;->Pd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "vod_id"

    .line 17
    invoke-virtual {v6, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "vod_name"

    .line 18
    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "vod_pic"

    .line 19
    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "vod_remarks"

    .line 20
    invoke-virtual {v6, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_bf
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3a

    :cond_c3
    const-string v10, "list"

    .line 22
    invoke-virtual {v0, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_cc} :catch_cd

    return-object v10

    :catch_cd
    move-exception v10

    .line 24
    invoke-static {v10}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    const-string v10, ""

    return-object v10
.end method

.method protected u(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "method"

    const-string v1, "GET"

    .line 2
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Host"

    const-string v1, "auete.com"

    .line 3
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Upgrade-Insecure-Requests"

    const-string v1, "1"

    .line 4
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "DNT"

    .line 5
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "User-Agent"

    const-string v1, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36"

    .line 6
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Accept"

    const-string v1, "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8"

    .line 7
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Accept-Language"

    const-string v1, "zh-CN,zh;q=0.8,zh-TW;q=0.7,zh-HK;q=0.5,en-US;q=0.3,en;q=0.2"

    .line 8
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method
