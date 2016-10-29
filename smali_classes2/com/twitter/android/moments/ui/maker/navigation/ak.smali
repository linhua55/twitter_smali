.class public Lcom/twitter/android/moments/ui/maker/navigation/ak;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/maker/navigation/e;

.field private final b:Lcom/twitter/android/moments/ui/maker/navigation/ac;

.field private final c:Lcom/twitter/android/moments/ui/maker/navigation/u;

.field private final d:Lcom/twitter/android/moments/ui/maker/navigation/m;

.field private final e:Lcom/twitter/android/moments/ui/maker/navigation/q;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/maker/navigation/ac;Lcom/twitter/android/moments/ui/maker/navigation/e;Lcom/twitter/android/moments/ui/maker/navigation/u;Lcom/twitter/android/moments/ui/maker/navigation/m;Lcom/twitter/android/moments/ui/maker/navigation/q;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/navigation/ak;->a:Lcom/twitter/android/moments/ui/maker/navigation/e;

    .line 47
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/navigation/ak;->b:Lcom/twitter/android/moments/ui/maker/navigation/ac;

    .line 48
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/navigation/ak;->c:Lcom/twitter/android/moments/ui/maker/navigation/u;

    .line 49
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/navigation/ak;->d:Lcom/twitter/android/moments/ui/maker/navigation/m;

    .line 50
    iput-object p5, p0, Lcom/twitter/android/moments/ui/maker/navigation/ak;->e:Lcom/twitter/android/moments/ui/maker/navigation/q;

    .line 51
    return-void
.end method

.method public static a(Lcom/twitter/app/common/base/BaseFragmentActivity;Lcom/twitter/android/moments/data/maker/a;Lcom/twitter/android/moments/ui/maker/df;Landroid/view/ViewGroup;Lcom/twitter/android/moments/ui/maker/a;Lcom/twitter/android/moments/ui/maker/dh;Laui;)Lcom/twitter/android/moments/ui/maker/navigation/ak;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/app/common/base/BaseFragmentActivity;",
            "Lcom/twitter/android/moments/data/maker/a;",
            "Lcom/twitter/android/moments/ui/maker/df;",
            "Landroid/view/ViewGroup;",
            "Lcom/twitter/android/moments/ui/maker/a;",
            "Lcom/twitter/android/moments/ui/maker/dh;",
            "Laui",
            "<",
            "Lcom/twitter/android/moments/ui/maker/bp;",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Landroid/net/Uri;",
            ">;>;)",
            "Lcom/twitter/android/moments/ui/maker/navigation/ak;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v7, Lcom/twitter/android/moments/ui/maker/navigation/ak;

    new-instance v8, Lcom/twitter/android/moments/ui/maker/navigation/ac;

    invoke-direct {v8, p0, p1, p2, p3}, Lcom/twitter/android/moments/ui/maker/navigation/ac;-><init>(Landroid/app/Activity;Lcom/twitter/android/moments/data/maker/a;Lcom/twitter/android/moments/ui/maker/df;Landroid/view/ViewGroup;)V

    new-instance v0, Lcom/twitter/android/moments/ui/maker/navigation/e;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/moments/ui/maker/navigation/e;-><init>(Landroid/app/Activity;Lcom/twitter/android/moments/data/maker/a;Lcom/twitter/android/moments/ui/maker/df;Landroid/view/ViewGroup;Lcom/twitter/android/moments/ui/maker/a;Lcom/twitter/android/moments/ui/maker/dh;)V

    new-instance v4, Lcom/twitter/android/moments/ui/maker/navigation/u;

    invoke-direct {v4, p0, p3, p1}, Lcom/twitter/android/moments/ui/maker/navigation/u;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/android/moments/data/maker/a;)V

    new-instance v5, Lcom/twitter/android/moments/ui/maker/navigation/m;

    invoke-direct {v5, p0, p3, p1, p6}, Lcom/twitter/android/moments/ui/maker/navigation/m;-><init>(Lcom/twitter/app/common/base/BaseFragmentActivity;Landroid/view/ViewGroup;Lcom/twitter/android/moments/data/maker/a;Laui;)V

    new-instance v6, Lcom/twitter/android/moments/ui/maker/navigation/q;

    invoke-direct {v6, p0, p3, p1}, Lcom/twitter/android/moments/ui/maker/navigation/q;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/android/moments/data/maker/a;)V

    move-object v1, v7

    move-object v2, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/moments/ui/maker/navigation/ak;-><init>(Lcom/twitter/android/moments/ui/maker/navigation/ac;Lcom/twitter/android/moments/ui/maker/navigation/e;Lcom/twitter/android/moments/ui/maker/navigation/u;Lcom/twitter/android/moments/ui/maker/navigation/m;Lcom/twitter/android/moments/ui/maker/navigation/q;)V

    return-object v7
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/ui/maker/navigation/NavigationKey;Lcom/twitter/android/moments/ui/maker/navigation/an;Lcom/twitter/android/moments/ui/maker/navigation/ag;)Lcom/twitter/android/moments/ui/maker/navigation/ap;
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/twitter/android/moments/ui/maker/navigation/al;->a:[I

    invoke-virtual {p2}, Lcom/twitter/android/moments/ui/maker/navigation/NavigationKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key must have a Screen type defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :pswitch_0
    instance-of v0, p3, Lcom/twitter/android/moments/ui/maker/navigation/d;

    if-eqz v0, :cond_0

    .line 60
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/navigation/ak;->a:Lcom/twitter/android/moments/ui/maker/navigation/e;

    .line 61
    invoke-static {p3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/maker/navigation/d;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/navigation/d;->a()Lcom/twitter/model/moments/ak;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/twitter/android/moments/ui/maker/navigation/e;->a(Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/model/moments/ak;)Lcom/twitter/android/moments/ui/maker/navigation/c;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Canvas Screen must have CanvasScreenArgs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :pswitch_1
    instance-of v0, p3, Lcom/twitter/android/moments/ui/maker/navigation/ab;

    if-eqz v0, :cond_1

    .line 69
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/navigation/ak;->b:Lcom/twitter/android/moments/ui/maker/navigation/ac;

    .line 70
    invoke-static {p3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/maker/navigation/ab;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/navigation/ab;->a()Lcom/twitter/model/moments/ak;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/twitter/android/moments/ui/maker/navigation/ac;->a(Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/model/moments/ak;)Lcom/twitter/android/moments/ui/maker/navigation/aa;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Grid Screen must have GridScreenArgs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :pswitch_2
    instance-of v0, p3, Lcom/twitter/android/moments/ui/maker/navigation/t;

    if-eqz v0, :cond_2

    .line 78
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/navigation/ak;->c:Lcom/twitter/android/moments/ui/maker/navigation/u;

    .line 79
    invoke-static {p3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/maker/navigation/t;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/navigation/t;->a()Lcom/twitter/model/moments/viewmodels/m;

    move-result-object v0

    .line 78
    invoke-virtual {v1, p1, v0}, Lcom/twitter/android/moments/ui/maker/navigation/u;->a(Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/model/moments/viewmodels/m;)Lcom/twitter/android/moments/ui/maker/navigation/r;

    move-result-object v0

    goto :goto_0

    .line 82
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cropper Screen must have CropperScreenArgs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :pswitch_3
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/ak;->d:Lcom/twitter/android/moments/ui/maker/navigation/m;

    sget-object v1, Lcom/twitter/android/moments/ui/maker/navigation/an;->a:Lcom/twitter/android/moments/ui/maker/navigation/an;

    invoke-virtual {v0, p1, v1}, Lcom/twitter/android/moments/ui/maker/navigation/m;->a(Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/ui/maker/navigation/an;)Lcom/twitter/android/moments/ui/maker/navigation/k;

    move-result-object v0

    goto :goto_0

    .line 90
    :pswitch_4
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/navigation/ak;->e:Lcom/twitter/android/moments/ui/maker/navigation/q;

    instance-of v0, p3, Lcom/twitter/android/moments/ui/maker/navigation/p;

    if-eqz v0, :cond_3

    .line 91
    invoke-static {p3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/maker/navigation/p;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/navigation/p;->a()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    .line 90
    :goto_1
    invoke-virtual {v1, p1, v0}, Lcom/twitter/android/moments/ui/maker/navigation/q;->a(Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/android/moments/ui/maker/navigation/n;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
