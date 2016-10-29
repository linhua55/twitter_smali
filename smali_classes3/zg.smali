.class public Lzg;
.super Lym;
.source "Twttr"


# instance fields
.field private final b:Lcom/twitter/android/dm/widget/SentMessageBylineView;

.field private final c:Landroid/view/View;

.field private final d:Lcom/twitter/android/media/widget/AttachmentMediaView;

.field private final e:Lcom/twitter/media/ui/AnimatingProgressBar;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/twitter/android/dm/widget/SentMessageBylineView;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lym;-><init>(Landroid/view/View;Z)V

    .line 299
    iput-object p2, p0, Lzg;->b:Lcom/twitter/android/dm/widget/SentMessageBylineView;

    .line 301
    iget-object v0, p0, Lzg;->a:Landroid/view/ViewGroup;

    const v1, 0x7f130307

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzg;->c:Landroid/view/View;

    .line 302
    iget-object v0, p0, Lzg;->c:Landroid/view/View;

    const v1, 0x7f130308

    .line 303
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 302
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/media/widget/AttachmentMediaView;

    iput-object v0, p0, Lzg;->d:Lcom/twitter/android/media/widget/AttachmentMediaView;

    .line 304
    iget-object v0, p0, Lzg;->c:Landroid/view/View;

    const v1, 0x7f130309

    .line 305
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 304
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/AnimatingProgressBar;

    iput-object v0, p0, Lzg;->e:Lcom/twitter/media/ui/AnimatingProgressBar;

    .line 306
    iget-object v0, p0, Lzg;->e:Lcom/twitter/media/ui/AnimatingProgressBar;

    invoke-virtual {v0, v2}, Lcom/twitter/media/ui/AnimatingProgressBar;->setHideOnComplete(Z)V

    .line 307
    iget-object v0, p0, Lzg;->e:Lcom/twitter/media/ui/AnimatingProgressBar;

    invoke-virtual {v0, v2}, Lcom/twitter/media/ui/AnimatingProgressBar;->setResetPrimaryOnComplete(Z)V

    .line 308
    iget-object v0, p0, Lzg;->e:Lcom/twitter/media/ui/AnimatingProgressBar;

    invoke-virtual {v0, v2}, Lcom/twitter/media/ui/AnimatingProgressBar;->setResetSecondaryOnComplete(Z)V

    .line 309
    return-void
.end method

.method static synthetic a(Lzg;)Lcom/twitter/android/dm/widget/SentMessageBylineView;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lzg;->b:Lcom/twitter/android/dm/widget/SentMessageBylineView;

    return-object v0
.end method

.method static synthetic b(Lzg;)Landroid/view/View;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lzg;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lzg;)Lcom/twitter/android/media/widget/AttachmentMediaView;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lzg;->d:Lcom/twitter/android/media/widget/AttachmentMediaView;

    return-object v0
.end method

.method static synthetic d(Lzg;)Lcom/twitter/media/ui/AnimatingProgressBar;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lzg;->e:Lcom/twitter/media/ui/AnimatingProgressBar;

    return-object v0
.end method
