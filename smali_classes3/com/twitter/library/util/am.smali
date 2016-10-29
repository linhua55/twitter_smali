.class final Lcom/twitter/library/util/am;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/platform/s;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/platform/r;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 25
    const-string/jumbo v0, "sound_effects"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/twitter/platform/r;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/twitter/library/util/al;->b:Z

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    const-string/jumbo v0, "font_size"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const-string/jumbo v0, "font_size"

    const-string/jumbo v1, ""

    invoke-interface {p1, v0, v1}, Lcom/twitter/platform/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {}, Lcom/twitter/util/ak;->d()F

    move-result v1

    mul-float/2addr v0, v1

    sput v0, Lcom/twitter/library/util/al;->a:F

    goto :goto_0
.end method
