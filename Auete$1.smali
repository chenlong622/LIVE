.class Lcom/github/catvod/spider/Auete$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/catvod/spider/Auete;->detailContent(Ljava/util/List;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic ue:Lcom/github/catvod/spider/Auete;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    nop

    return-void
.end method

.method constructor <init>(Lcom/github/catvod/spider/Auete;)V
    .registers 6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iput-object v1, v0, Lcom/github/catvod/spider/Auete$1;->ue:Lcom/github/catvod/spider/Auete;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    check-cast v1, Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/github/catvod/spider/Auete$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    const-string v0, "or"

    const/4 v1, 0x1

    .line 2
    :try_start_9
    iget-object v2, v3, Lcom/github/catvod/spider/Auete$1;->ue:Lcom/github/catvod/spider/Auete;

    invoke-static {v2}, Lcom/github/catvod/spider/Auete;->ue(Lcom/github/catvod/spider/Auete;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 3
    iget-object v2, v3, Lcom/github/catvod/spider/Auete$1;->ue:Lcom/github/catvod/spider/Auete;

    invoke-static {v2}, Lcom/github/catvod/spider/Auete;->ue(Lcom/github/catvod/spider/Auete;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_25} :catch_2e

    if-ne v4, v5, :cond_28

    return v1

    :cond_28
    sub-int/2addr v4, v5

    if-lez v4, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v1, -0x1

    :goto_2d
    return v1

    :catch_2e
    move-exception v4

    .line 4
    invoke-static {v4}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    return v1
.end method
