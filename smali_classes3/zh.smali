.class public Lzh;
.super Lxt;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lxt",
        "<",
        "Lcom/twitter/model/dms/l;",
        ">;"
    }
.end annotation


# instance fields
.field private final l:Lcom/twitter/android/dm/au;


# direct methods
.method private constructor <init>(Lzj;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lxt;-><init>(Lwz;)V

    .line 18
    invoke-static {p1}, Lzj;->a(Lzj;)Lcom/twitter/android/dm/au;

    move-result-object v0

    iput-object v0, p0, Lzh;->l:Lcom/twitter/android/dm/au;

    .line 19
    return-void
.end method

.method synthetic constructor <init>(Lzj;Lzi;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lzh;-><init>(Lzj;)V

    return-void
.end method

.method static synthetic a(Lzh;)Lcom/twitter/android/dm/au;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lzh;->l:Lcom/twitter/android/dm/au;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lzh;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lzh;->h:Landroid/content/res/Resources;

    const v2, 0x7f0a02fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p0, Lzh;->k:Landroid/widget/TextView;

    new-instance v1, Lzi;

    invoke-direct {v1, p0}, Lzi;-><init>(Lzh;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    invoke-virtual {p0}, Lzh;->d()V

    .line 31
    invoke-virtual {p0}, Lzh;->b()V

    .line 32
    return-void
.end method
