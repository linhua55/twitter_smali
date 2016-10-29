.class public Lbta;
.super Lcom/twitter/library/api/t;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/api/t",
        "<",
        "Lcty;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcub;


# direct methods
.method public constructor <init>(Lcub;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/twitter/library/api/t;-><init>()V

    .line 29
    iput-object p1, p0, Lbta;->a:Lcub;

    .line 30
    return-void
.end method


# virtual methods
.method protected synthetic a(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lbta;->b(Lcom/fasterxml/jackson/core/JsonParser;)Lcty;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic a(Lcom/fasterxml/jackson/core/JsonParser;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lbta;->b(Lcom/fasterxml/jackson/core/JsonParser;I)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/fasterxml/jackson/core/JsonParser;)Lcty;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    const-class v0, Lcom/twitter/model/json/timeline/urt/JsonTimelineResponse;

    .line 46
    invoke-static {p1, v0}, Lcom/twitter/model/json/common/g;->b(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Lcom/twitter/util/object/h;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcua;

    .line 47
    iget-object v1, p0, Lbta;->a:Lcub;

    .line 48
    invoke-virtual {v0, v1}, Lcua;->a(Lcub;)Lcua;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcua;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcty;

    .line 47
    return-object v0
.end method

.method protected b(Lcom/fasterxml/jackson/core/JsonParser;I)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    const-string/jumbo v0, "URT_Parser_Reader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed with parse error on status-code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcjw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method
