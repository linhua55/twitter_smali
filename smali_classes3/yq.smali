.class public Lyq;
.super Lxt;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lxt",
        "<",
        "Lcom/twitter/model/dms/dw;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lys;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lxt;-><init>(Lwz;)V

    .line 15
    return-void
.end method

.method synthetic constructor <init>(Lys;Lyr;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lyq;-><init>(Lys;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 26
    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lyq;->h:Landroid/content/res/Resources;

    const v1, 0x7f0a02d4

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lyq;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lyq;->b:Lbnt;

    iget-object v1, v1, Lbnt;->d:Ljava/lang/String;

    invoke-direct {p0, v1}, Lyq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {p0}, Lyq;->d()V

    .line 21
    invoke-virtual {p0}, Lyq;->b()V

    .line 22
    return-void
.end method
