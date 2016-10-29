.class public Laqu;
.super Laqt;
.source "Twttr"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Laqt;-><init>()V

    .line 14
    return-void
.end method

.method synthetic constructor <init>(Laqv;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Laqu;-><init>()V

    return-void
.end method

.method public static a()Laqu;
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Laqw;->a()Laqu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;I)Laqs;
    .locals 3

    .prologue
    .line 25
    packed-switch p3, :pswitch_data_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid or unsupported tooltip type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :pswitch_0
    new-instance v0, Laqr;

    invoke-direct {v0, p1, p2}, Laqr;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    return-object v0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
