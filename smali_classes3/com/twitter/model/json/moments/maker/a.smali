.class public Lcom/twitter/model/json/moments/maker/a;
.super Lcom/twitter/model/json/common/n;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/json/common/n",
        "<",
        "Lcom/twitter/model/moments/maker/MomentEditOperation$Visibility;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 10
    sget-object v0, Lcom/twitter/model/moments/maker/MomentEditOperation$Visibility;->a:Lcom/twitter/model/moments/maker/MomentEditOperation$Visibility;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/util/Map$Entry;

    const/4 v2, 0x0

    const-string/jumbo v3, "private"

    sget-object v4, Lcom/twitter/model/moments/maker/MomentEditOperation$Visibility;->a:Lcom/twitter/model/moments/maker/MomentEditOperation$Visibility;

    .line 11
    invoke-static {v3, v4}, Lcom/twitter/model/json/moments/maker/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "unlisted"

    sget-object v4, Lcom/twitter/model/moments/maker/MomentEditOperation$Visibility;->b:Lcom/twitter/model/moments/maker/MomentEditOperation$Visibility;

    .line 12
    invoke-static {v3, v4}, Lcom/twitter/model/json/moments/maker/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "public"

    sget-object v4, Lcom/twitter/model/moments/maker/MomentEditOperation$Visibility;->c:Lcom/twitter/model/moments/maker/MomentEditOperation$Visibility;

    .line 13
    invoke-static {v3, v4}, Lcom/twitter/model/json/moments/maker/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    .line 10
    invoke-direct {p0, v0, v1}, Lcom/twitter/model/json/common/n;-><init>(Ljava/lang/Object;[Ljava/util/Map$Entry;)V

    .line 14
    return-void
.end method
