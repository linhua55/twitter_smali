.class Lchy;
.super Landroid/telephony/PhoneStateListener;
.source "Twttr"


# instance fields
.field final synthetic a:Lchw;


# direct methods
.method private constructor <init>(Lchw;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lchy;->a:Lchw;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lchw;Lchx;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lchy;-><init>(Lchw;)V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lchy;->a:Lchw;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    invoke-static {v0, v1}, Lchw;->a(Lchw;I)I

    .line 117
    :goto_0
    iget-object v0, p0, Lchy;->a:Lchw;

    iget-object v1, p0, Lchy;->a:Lchw;

    invoke-static {v1, p1}, Lchw;->a(Lchw;Landroid/telephony/SignalStrength;)I

    move-result v1

    invoke-static {v0, v1}, Lchw;->b(Lchw;I)I

    .line 118
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lchy;->a:Lchw;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    invoke-static {v0, v1}, Lchw;->a(Lchw;I)I

    goto :goto_0
.end method
