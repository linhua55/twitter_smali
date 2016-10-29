.class Lcom/twitter/android/moments/ui/guide/aq;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/object/c",
        "<",
        "Ljava/lang/Long;",
        "Lcom/twitter/model/moments/maker/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;J)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/twitter/android/moments/ui/guide/aq;->b:Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;

    iput-wide p2, p0, Lcom/twitter/android/moments/ui/guide/aq;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)Lcom/twitter/model/moments/maker/a;
    .locals 4

    .prologue
    .line 274
    new-instance v0, Lcom/twitter/model/moments/maker/d;

    invoke-direct {v0}, Lcom/twitter/model/moments/maker/d;-><init>()V

    iget-wide v2, p0, Lcom/twitter/android/moments/ui/guide/aq;->a:J

    .line 275
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/moments/maker/d;->a(J)Lcom/twitter/model/moments/maker/ap;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/d;

    .line 276
    invoke-static {}, Lcom/twitter/model/moments/maker/aj;->a()Lcom/twitter/model/moments/maker/aj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/maker/d;->a(Lcom/twitter/model/moments/maker/aj;)Lcom/twitter/model/moments/maker/ad;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/d;

    .line 277
    invoke-virtual {v0}, Lcom/twitter/model/moments/maker/d;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/a;

    .line 274
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 270
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/guide/aq;->a(Ljava/lang/Long;)Lcom/twitter/model/moments/maker/a;

    move-result-object v0

    return-object v0
.end method
