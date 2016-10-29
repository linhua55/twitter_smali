.class Lcom/twitter/android/media/stickers/e;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lczn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lczn",
        "<",
        "Lcpb;",
        "Lcpe;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/twitter/android/media/stickers/StickerMediaView;


# direct methods
.method constructor <init>(Lcom/twitter/android/media/stickers/StickerMediaView;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/twitter/android/media/stickers/e;->b:Lcom/twitter/android/media/stickers/StickerMediaView;

    iput-object p2, p0, Lcom/twitter/android/media/stickers/e;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcpb;)Lcpe;
    .locals 4

    .prologue
    .line 312
    iget-object v1, p0, Lcom/twitter/android/media/stickers/e;->a:Ljava/util/Map;

    .line 313
    invoke-static {p1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpb;

    iget-wide v2, v0, Lcpb;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpf;

    .line 314
    if-eqz v0, :cond_0

    .line 315
    iget-object v1, v0, Lcpf;->j:Lcpu;

    iget-wide v2, v0, Lcpf;->k:J

    invoke-static {v1, p1, v2, v3}, Lcpe;->a(Lcpu;Lcpb;J)Lcpe;

    move-result-object v0

    .line 318
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 308
    check-cast p1, Lcpb;

    invoke-virtual {p0, p1}, Lcom/twitter/android/media/stickers/e;->a(Lcpb;)Lcpe;

    move-result-object v0

    return-object v0
.end method
