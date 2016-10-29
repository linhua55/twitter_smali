.class public Lcom/twitter/android/moments/ui/maker/ai;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lasn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lasn",
        "<",
        "Lamu;",
        "Lasm",
        "<",
        "Lamu;",
        ">;>;"
    }
.end annotation


# instance fields
.field final a:Landroid/view/LayoutInflater;

.field final b:Lcom/twitter/android/moments/ui/maker/df;

.field private final c:Lcom/twitter/android/moments/ui/maker/navigation/ao;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/twitter/android/moments/data/maker/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/twitter/android/moments/ui/maker/df;Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/data/maker/a;)V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/ai;->a:Landroid/view/LayoutInflater;

    .line 258
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/ai;->b:Lcom/twitter/android/moments/ui/maker/df;

    .line 259
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/ai;->c:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    .line 260
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/ai;->d:Landroid/content/Context;

    .line 261
    iput-object p5, p0, Lcom/twitter/android/moments/ui/maker/ai;->e:Lcom/twitter/android/moments/data/maker/a;

    .line 262
    return-void
.end method


# virtual methods
.method public a(Lamu;)I
    .locals 1

    .prologue
    .line 302
    instance-of v0, p1, Lana;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lamw;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 241
    check-cast p1, Lamu;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/ai;->a(Lamu;)I

    move-result v0

    return v0
.end method

.method public b(Landroid/view/ViewGroup;Lasl;I)Lasm;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lasl;",
            "I)",
            "Lasm",
            "<",
            "Lamu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    packed-switch p3, :pswitch_data_0

    .line 280
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ai;->a:Landroid/view/LayoutInflater;

    .line 281
    invoke-static {v0, p1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/maker/viewdelegate/d;

    move-result-object v1

    .line 282
    new-instance v2, Lcom/twitter/android/moments/ui/maker/aj;

    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ai;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/maker/ai;->b:Lcom/twitter/android/moments/ui/maker/df;

    iget-object v4, p0, Lcom/twitter/android/moments/ui/maker/ai;->c:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/twitter/android/moments/ui/maker/aj;-><init>(Landroid/content/Context;Lcom/twitter/android/moments/ui/maker/viewdelegate/d;Lcom/twitter/android/moments/ui/maker/df;Lcom/twitter/android/moments/ui/maker/navigation/ao;)V

    .line 286
    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->b()Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    move-result-object v0

    invoke-static {v0}, Lams;->a(Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;)Lams;

    move-result-object v3

    .line 287
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 288
    new-instance v0, Lcom/twitter/android/moments/ui/maker/am;

    iget-object v4, p0, Lcom/twitter/android/moments/ui/maker/ai;->c:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/twitter/android/moments/ui/maker/am;-><init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/d;Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/ui/maker/aj;Lams;)V

    .line 297
    :goto_0
    return-object v0

    .line 271
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ai;->a:Landroid/view/LayoutInflater;

    .line 273
    invoke-static {v0, p1}, Lcom/twitter/android/moments/ui/maker/aw;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/maker/aw;

    move-result-object v1

    .line 274
    new-instance v0, Lcom/twitter/android/moments/ui/maker/as;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/ai;->c:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/maker/ai;->e:Lcom/twitter/android/moments/data/maker/a;

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/moments/ui/maker/as;-><init>(Lcom/twitter/android/moments/ui/maker/aw;Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/data/maker/a;)V

    goto :goto_0

    .line 291
    :cond_0
    new-instance v0, Lcom/twitter/android/moments/ui/maker/z;

    iget-object v4, p0, Lcom/twitter/android/moments/ui/maker/ai;->d:Landroid/content/Context;

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/twitter/android/moments/ui/maker/z;-><init>(Landroid/content/Context;Lcom/twitter/android/moments/ui/maker/viewdelegate/d;Lcom/twitter/android/moments/ui/maker/aj;Lams;)V

    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
