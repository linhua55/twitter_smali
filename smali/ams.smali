.class public Lams;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

.field private final b:Lcom/twitter/library/av/playback/bn;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;Lcom/twitter/library/av/playback/bn;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lams;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    .line 35
    iput-object p2, p0, Lams;->b:Lcom/twitter/library/av/playback/bn;

    .line 36
    return-void
.end method

.method public static a(Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;)Lams;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lams;

    new-instance v1, Lcom/twitter/library/av/playback/bn;

    invoke-direct {v1}, Lcom/twitter/library/av/playback/bn;-><init>()V

    invoke-direct {v0, p0, v1}, Lams;-><init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;Lcom/twitter/library/av/playback/bn;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/m;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/m;->b()Lcom/twitter/model/moments/MomentPageDisplayMode;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/moments/MomentPageDisplayMode;->b:Lcom/twitter/model/moments/MomentPageDisplayMode;

    if-eq v0, v1, :cond_1

    .line 41
    iget-object v0, p0, Lams;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->c()V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/m;->a()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    .line 45
    sget-object v1, Lamt;->a:[I

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/model/moments/viewmodels/MomentPage$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 86
    iget-object v0, p0, Lams;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->c()V

    goto :goto_0

    .line 47
    :pswitch_0
    iget-object v0, p1, Lcom/twitter/model/moments/viewmodels/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 48
    if-le v0, v4, :cond_2

    .line 49
    iget-object v1, p0, Lams;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->b()V

    .line 50
    iget-object v1, p0, Lams;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    const v2, 0x7f020561

    invoke-virtual {v1, v2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->a(I)V

    .line 51
    iget-object v1, p0, Lams;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, p0, Lams;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->c()V

    goto :goto_0

    .line 58
    :pswitch_1
    iget-object v0, p0, Lams;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->b()V

    .line 59
    iget-object v0, p0, Lams;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    const v1, 0x7f020285

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->a(I)V

    .line 60
    iget-object v0, p0, Lams;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    invoke-virtual {v0, v3}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :pswitch_2
    instance-of v1, v0, Lcom/twitter/model/moments/viewmodels/y;

    if-eqz v1, :cond_0

    .line 65
    check-cast v0, Lcom/twitter/model/moments/viewmodels/y;

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/y;->t()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    .line 66
    iget-object v1, p0, Lams;->b:Lcom/twitter/library/av/playback/bn;

    invoke-virtual {v1, v0}, Lcom/twitter/library/av/playback/bn;->a(Lcom/twitter/model/core/Tweet;)I

    move-result v1

    .line 67
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 68
    iget-object v0, p0, Lams;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    const v1, 0x7f0203fb

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->a(I)V

    .line 69
    iget-object v0, p0, Lams;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    invoke-virtual {v0, v3}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->a(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lams;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->b()V

    goto :goto_0

    .line 71
    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 72
    iget-object v0, p0, Lams;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    const v1, 0x7f0206bb

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->a(I)V

    .line 73
    iget-object v0, p0, Lams;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    invoke-virtual {v0, v3}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->a(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lams;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->b()V

    goto/16 :goto_0

    .line 75
    :cond_4
    if-eqz v1, :cond_5

    if-ne v1, v4, :cond_6

    .line 76
    :cond_5
    iget-object v1, p0, Lams;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->a(I)V

    .line 77
    iget-object v1, p0, Lams;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    iget-object v2, p0, Lams;->b:Lcom/twitter/library/av/playback/bn;

    invoke-virtual {v2, v0}, Lcom/twitter/library/av/playback/bn;->b(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->a(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lams;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->b()V

    goto/16 :goto_0

    .line 80
    :cond_6
    iget-object v0, p0, Lams;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->c()V

    goto/16 :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
