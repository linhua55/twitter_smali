.class public Lxh;
.super Lxt;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lxt",
        "<",
        "Lcom/twitter/model/dms/eo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lxj;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lxt;-><init>(Lwz;)V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lxj;Lxi;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lxh;-><init>(Lxj;)V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    invoke-static {p2}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const v0, 0x7f0a02af

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    .line 34
    :cond_0
    if-eqz p3, :cond_1

    const v0, 0x7f0a031b

    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f0a0308

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 36
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 39
    :cond_2
    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40
    const v0, 0x7f0a02ae

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_3
    if-eqz p3, :cond_4

    const v0, 0x7f0a031a

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    .line 44
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const v0, 0x7f0a0306

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    .line 45
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 20
    iget-object v1, p0, Lxh;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lxh;->g:Landroid/content/Context;

    iget-object v0, p0, Lxh;->b:Lbnt;

    iget-object v3, v0, Lbnt;->d:Ljava/lang/String;

    iget-object v0, p0, Lxh;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/eo;

    invoke-virtual {v0}, Lcom/twitter/model/dms/eo;->j()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {p0}, Lxh;->c()Z

    move-result v4

    .line 20
    invoke-static {v2, v3, v0, v4}, Lxh;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {p0}, Lxh;->d()V

    .line 23
    invoke-virtual {p0}, Lxh;->b()V

    .line 24
    return-void
.end method
