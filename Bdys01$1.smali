.class Lcom/github/catvod/spider/Bdys01$1;
.super Lcom/github/catvod/spider/merge1/Ok$vE;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/catvod/spider/Bdys01;->playerContent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic X:Lcom/github/catvod/spider/Bdys01;


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/Bdys01;)V
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/Bdys01$1;->X:Lcom/github/catvod/spider/Bdys01;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/Ok$vE;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Lokhttp3/Call;Ljava/lang/Exception;)V
    .registers 3

    return-void
.end method

.method protected bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lokhttp3/Response;

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/Bdys01$1;->onResponse(Lokhttp3/Response;)V

    return-void
.end method

.method protected onResponse(Lokhttp3/Response;)V
    .registers 2

    return-void
.end method
