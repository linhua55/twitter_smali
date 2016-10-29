.class public Laaa;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Laab;Landroid/view/ViewGroup;ILaah;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/util/List;)Lzz;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Laab;",
            "Landroid/view/ViewGroup;",
            "I",
            "Laah;",
            "Lcom/twitter/library/scribe/TwitterScribeAssociation;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/media/ui/image/MediaImageView;",
            ">;)",
            "Lzz;"
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p2}, Laab;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Gallery item type not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :pswitch_0
    new-instance v0, Laaj;

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Laaj;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILaah;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/util/List;)V

    .line 29
    :goto_0
    return-object v0

    .line 25
    :pswitch_1
    new-instance v0, Laac;

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Laac;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILaah;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/util/List;)V

    goto :goto_0

    .line 29
    :pswitch_2
    new-instance v0, Laal;

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Laal;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILaah;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/util/List;)V

    goto :goto_0

    .line 18
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
