.class public Lxk;
.super Lxt;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lxt",
        "<",
        "Lcom/twitter/model/dms/eh;",
        ">;"
    }
.end annotation


# instance fields
.field private final l:Lcom/twitter/media/ui/image/MediaImageView;

.field private final m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lxm;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lxt;-><init>(Lwz;)V

    .line 25
    invoke-static {p1}, Lxm;->a(Lxm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxk;->m:Ljava/lang/String;

    .line 26
    iget-object v0, p1, Lxm;->a:Lxa;

    check-cast v0, Lxn;

    invoke-static {v0}, Lxn;->a(Lxn;)Lcom/twitter/media/ui/image/MediaImageView;

    move-result-object v0

    iput-object v0, p0, Lxk;->l:Lcom/twitter/media/ui/image/MediaImageView;

    .line 27
    return-void
.end method

.method private a(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 4

    .prologue
    .line 54
    if-eqz p3, :cond_1

    .line 55
    iget-object v1, p0, Lxk;->h:Landroid/content/res/Resources;

    if-eqz p2, :cond_0

    const v0, 0x7f0a031c

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    :goto_1
    return-object v0

    .line 55
    :cond_0
    const v0, 0x7f0a032b

    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, p0, Lxk;->h:Landroid/content/res/Resources;

    if-eqz p2, :cond_2

    const v0, 0x7f0a0309

    :goto_2
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const v0, 0x7f0a0317

    goto :goto_2
.end method

.method static synthetic a(Lxk;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lxk;->m:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 31
    iget-object v0, p0, Lxk;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/eh;

    iget-object v1, p0, Lxk;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/model/dms/eh;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lxk;->l:Lcom/twitter/media/ui/image/MediaImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lxk;->l:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v1, p0, Lxk;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/dm/DMGroupAvatarImageVariant;->e:Lcom/twitter/media/request/d;

    .line 34
    invoke-virtual {v1, v2}, Lcom/twitter/media/request/b;->a(Lcom/twitter/media/request/d;)Lcom/twitter/media/request/b;

    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 35
    iget-object v0, p0, Lxk;->l:Lcom/twitter/media/ui/image/MediaImageView;

    new-instance v1, Lxl;

    invoke-direct {v1, p0}, Lxl;-><init>(Lxk;)V

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    :goto_0
    iget-object v1, p0, Lxk;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lxk;->b:Lbnt;

    iget-object v2, v0, Lbnt;->d:Ljava/lang/String;

    iget-object v0, p0, Lxk;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/eh;

    invoke-virtual {v0}, Lcom/twitter/model/dms/eh;->j()Z

    move-result v0

    .line 46
    invoke-virtual {p0}, Lxk;->c()Z

    move-result v3

    .line 45
    invoke-direct {p0, v2, v0, v3}, Lxk;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {p0}, Lxk;->d()V

    .line 48
    invoke-virtual {p0}, Lxk;->b()V

    .line 49
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lxk;->l:Lcom/twitter/media/ui/image/MediaImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    goto :goto_0
.end method
