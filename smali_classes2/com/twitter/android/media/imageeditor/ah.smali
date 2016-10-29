.class Lcom/twitter/android/media/imageeditor/ah;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/media/stickers/data/g;


# instance fields
.field final synthetic a:Lcom/twitter/android/media/imageeditor/af;


# direct methods
.method constructor <init>(Lcom/twitter/android/media/imageeditor/af;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/twitter/android/media/imageeditor/ah;->a:Lcom/twitter/android/media/imageeditor/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcpy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/ah;->a:Lcom/twitter/android/media/imageeditor/af;

    invoke-static {v0}, Lcom/twitter/android/media/imageeditor/af;->a(Lcom/twitter/android/media/imageeditor/af;)Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;

    move-result-object v0

    .line 117
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/twitter/android/media/stickers/i;->a(Ljava/util/List;J)Ljava/util/List;

    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->setStickerFeaturedCategoryData(Ljava/util/List;)V

    .line 118
    return-void
.end method
