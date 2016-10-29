.class public Lcom/twitter/app/drafts/l;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/media/ui/image/MediaImageView;

.field public final b:Landroid/widget/ImageView;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/view/View;

.field public final e:Landroid/view/View;

.field public final f:Lcom/twitter/library/media/widget/VideoDurationView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const v0, 0x7f130313

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lcom/twitter/app/drafts/l;->a:Lcom/twitter/media/ui/image/MediaImageView;

    .line 139
    const v0, 0x7f130315

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/app/drafts/l;->b:Landroid/widget/ImageView;

    .line 140
    const v0, 0x7f130019

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/app/drafts/l;->c:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f130038

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/drafts/l;->d:Landroid/view/View;

    .line 142
    const v0, 0x7f130314

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/drafts/l;->e:Landroid/view/View;

    .line 143
    const v0, 0x7f13008d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/VideoDurationView;

    iput-object v0, p0, Lcom/twitter/app/drafts/l;->f:Lcom/twitter/library/media/widget/VideoDurationView;

    .line 144
    return-void
.end method
