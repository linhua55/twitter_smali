.class public final Ldff;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Lokhttp3/at;

.field public final b:Lokhttp3/ax;


# direct methods
.method private constructor <init>(Lokhttp3/at;Lokhttp3/ax;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Ldff;->a:Lokhttp3/at;

    .line 58
    iput-object p2, p0, Ldff;->b:Lokhttp3/ax;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/at;Lokhttp3/ax;Ldfg;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ldff;-><init>(Lokhttp3/at;Lokhttp3/ax;)V

    return-void
.end method

.method public static a(Lokhttp3/ax;Lokhttp3/at;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0}, Lokhttp3/ax;->c()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 85
    :sswitch_0
    const-string/jumbo v1, "Expires"

    invoke-virtual {p0, v1}, Lokhttp3/ax;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 86
    invoke-virtual {p0}, Lokhttp3/ax;->j()Lokhttp3/k;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/k;->c()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 87
    invoke-virtual {p0}, Lokhttp3/ax;->j()Lokhttp3/k;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/k;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    invoke-virtual {p0}, Lokhttp3/ax;->j()Lokhttp3/k;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/k;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    :cond_1
    :sswitch_1
    invoke-virtual {p0}, Lokhttp3/ax;->j()Lokhttp3/k;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/k;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lokhttp3/at;->g()Lokhttp3/k;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/k;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 65
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xcb -> :sswitch_1
        0xcc -> :sswitch_1
        0x12c -> :sswitch_1
        0x12d -> :sswitch_1
        0x12e -> :sswitch_0
        0x133 -> :sswitch_0
        0x134 -> :sswitch_1
        0x194 -> :sswitch_1
        0x195 -> :sswitch_1
        0x19a -> :sswitch_1
        0x19e -> :sswitch_1
        0x1f5 -> :sswitch_1
    .end sparse-switch
.end method
