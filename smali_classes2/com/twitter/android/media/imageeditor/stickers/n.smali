.class Lcom/twitter/android/media/imageeditor/stickers/n;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "Twttr"


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;


# direct methods
.method constructor <init>(Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/twitter/android/media/imageeditor/stickers/n;->b:Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;

    iput-object p2, p0, Lcom/twitter/android/media/imageeditor/stickers/n;->a:Ljava/util/List;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 165
    if-nez p1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/n;->b:Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;

    invoke-static {v0}, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->d(Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;)Lcom/twitter/ui/view/LockableViewPager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twitter/ui/view/LockableViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 167
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/n;->b:Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;

    invoke-static {v0}, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->e(Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;)Lcom/twitter/android/media/imageeditor/stickers/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/stickers/a;->a()Ljava/util/List;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/stickers/n;->a:Ljava/util/List;

    invoke-static {v1, v0}, Lczz;->b(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/n;->b:Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;

    invoke-static {v0}, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->e(Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;)Lcom/twitter/android/media/imageeditor/stickers/a;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/stickers/n;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/imageeditor/stickers/a;->a(Ljava/util/List;)V

    .line 170
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/n;->b:Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;

    invoke-static {v0}, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->e(Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;)Lcom/twitter/android/media/imageeditor/stickers/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/stickers/a;->notifyDataSetChanged()V

    .line 171
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/n;->b:Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;

    invoke-static {v0}, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->f(Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;)Lcom/twitter/android/media/imageeditor/stickers/StickerTabLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/stickers/n;->b:Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;

    invoke-static {v1}, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->d(Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;)Lcom/twitter/ui/view/LockableViewPager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/imageeditor/stickers/StickerTabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 174
    :cond_0
    return-void
.end method
