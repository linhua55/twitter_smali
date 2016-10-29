.class public Lxb;
.super Lxt;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lxt",
        "<",
        "Lcom/twitter/model/dms/s;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lxd;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lxt;-><init>(Lwz;)V

    .line 13
    return-void
.end method

.method synthetic constructor <init>(Lxd;Lxc;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lxb;-><init>(Lxd;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 17
    iget-object v0, p0, Lxb;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lxb;->h:Landroid/content/res/Resources;

    const v2, 0x7f0a0235

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p0}, Lxb;->d()V

    .line 19
    invoke-virtual {p0}, Lxb;->b()V

    .line 20
    return-void
.end method
