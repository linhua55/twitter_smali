.class public Lcom/twitter/library/network/forecaster/c;
.super Lcom/twitter/util/x;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/x",
        "<",
        "Lcom/twitter/library/network/forecaster/h;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/twitter/util/units/data/Kibibytes;

.field private static final b:Lcom/twitter/util/units/data/Kibibytes;

.field private static final c:Lcom/twitter/util/units/duration/Milliseconds;

.field private static final d:Lcom/twitter/util/units/duration/Duration;


# instance fields
.field private e:Lcom/twitter/library/network/forecaster/NetworkQuality;

.field private f:Lddj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lddj",
            "<",
            "Lcom/twitter/util/units/data/Kibibytes;",
            "Lcom/twitter/util/units/bitrate/KilobitsPerSecond;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lddj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lddj",
            "<",
            "Lcom/twitter/util/units/data/Kibibytes;",
            "Lcom/twitter/util/units/bitrate/KilobitsPerSecond;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lddl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lddl",
            "<",
            "Lcom/twitter/util/units/duration/Milliseconds;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 38
    new-instance v0, Lcom/twitter/util/units/data/Kibibytes;

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    invoke-direct {v0, v2, v3}, Lcom/twitter/util/units/data/Kibibytes;-><init>(D)V

    sput-object v0, Lcom/twitter/library/network/forecaster/c;->a:Lcom/twitter/util/units/data/Kibibytes;

    .line 41
    new-instance v0, Lcom/twitter/util/units/data/Kibibytes;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v2, v3}, Lcom/twitter/util/units/data/Kibibytes;-><init>(D)V

    sput-object v0, Lcom/twitter/library/network/forecaster/c;->b:Lcom/twitter/util/units/data/Kibibytes;

    .line 44
    new-instance v0, Lcom/twitter/util/units/duration/Milliseconds;

    const-wide v2, 0x4072c00000000000L    # 300.0

    invoke-direct {v0, v2, v3}, Lcom/twitter/util/units/duration/Milliseconds;-><init>(D)V

    sput-object v0, Lcom/twitter/library/network/forecaster/c;->c:Lcom/twitter/util/units/duration/Milliseconds;

    .line 46
    new-instance v0, Lcom/twitter/util/units/duration/Minutes;

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    invoke-direct {v0, v2, v3}, Lcom/twitter/util/units/duration/Minutes;-><init>(D)V

    sput-object v0, Lcom/twitter/library/network/forecaster/c;->d:Lcom/twitter/util/units/duration/Duration;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    .line 66
    invoke-static {}, Lcom/twitter/library/client/y;->a()Lcom/twitter/library/client/y;

    move-result-object v0

    .line 67
    invoke-static {}, Lcom/twitter/platform/n;->a()Lcom/twitter/platform/n;

    move-result-object v1

    .line 68
    invoke-static {}, Lcom/twitter/internal/network/d;->a()Lcom/twitter/internal/network/d;

    move-result-object v2

    .line 69
    invoke-static {}, Lcom/twitter/internal/network/t;->a()Lcom/twitter/internal/network/t;

    move-result-object v3

    .line 66
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/twitter/library/network/forecaster/c;-><init>(Lcom/twitter/util/x;Lcom/twitter/util/x;Lcom/twitter/internal/network/d;Lcom/twitter/internal/network/t;)V

    .line 70
    return-void
.end method

.method protected constructor <init>(Lcom/twitter/util/x;Lcom/twitter/util/x;Lcom/twitter/internal/network/d;Lcom/twitter/internal/network/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/library/client/z;",
            ">;",
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/platform/q;",
            ">;",
            "Lcom/twitter/internal/network/d;",
            "Lcom/twitter/internal/network/t;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0xa

    .line 84
    invoke-direct {p0}, Lcom/twitter/util/x;-><init>()V

    .line 48
    sget-object v0, Lcom/twitter/library/network/forecaster/NetworkQuality;->e:Lcom/twitter/library/network/forecaster/NetworkQuality;

    iput-object v0, p0, Lcom/twitter/library/network/forecaster/c;->e:Lcom/twitter/library/network/forecaster/NetworkQuality;

    .line 50
    new-instance v0, Lddj;

    invoke-direct {v0, v1}, Lddj;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/library/network/forecaster/c;->f:Lddj;

    .line 52
    new-instance v0, Lddj;

    invoke-direct {v0, v1}, Lddj;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/library/network/forecaster/c;->g:Lddj;

    .line 54
    new-instance v0, Lddl;

    invoke-direct {v0, v1}, Lddl;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/library/network/forecaster/c;->h:Lddl;

    .line 57
    iput-boolean v2, p0, Lcom/twitter/library/network/forecaster/c;->i:Z

    .line 59
    iput-boolean v2, p0, Lcom/twitter/library/network/forecaster/c;->j:Z

    .line 85
    sget-object v0, Lcom/twitter/platform/TwRadioType;->b:Lcom/twitter/platform/TwRadioType;

    invoke-direct {p0, v0}, Lcom/twitter/library/network/forecaster/c;->a(Lcom/twitter/platform/TwRadioType;)V

    .line 86
    invoke-virtual {p4}, Lcom/twitter/internal/network/t;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/library/network/forecaster/c;->j:Z

    .line 88
    new-instance v0, Lcom/twitter/library/network/forecaster/d;

    invoke-direct {v0, p0, p1}, Lcom/twitter/library/network/forecaster/d;-><init>(Lcom/twitter/library/network/forecaster/c;Lcom/twitter/util/x;)V

    invoke-virtual {p1, v0}, Lcom/twitter/util/x;->a(Lcom/twitter/util/y;)Z

    .line 96
    new-instance v0, Lcom/twitter/library/network/forecaster/e;

    invoke-direct {v0, p0}, Lcom/twitter/library/network/forecaster/e;-><init>(Lcom/twitter/library/network/forecaster/c;)V

    invoke-virtual {p2, v0}, Lcom/twitter/util/x;->a(Lcom/twitter/util/y;)Z

    .line 103
    new-instance v0, Lcom/twitter/library/network/forecaster/f;

    invoke-direct {v0, p0}, Lcom/twitter/library/network/forecaster/f;-><init>(Lcom/twitter/library/network/forecaster/c;)V

    invoke-virtual {p3, v0}, Lcom/twitter/internal/network/d;->a(Lcom/twitter/internal/network/c;)V

    .line 131
    new-instance v0, Lcom/twitter/library/network/forecaster/g;

    invoke-direct {v0, p0}, Lcom/twitter/library/network/forecaster/g;-><init>(Lcom/twitter/library/network/forecaster/c;)V

    invoke-virtual {p4, v0}, Lcom/twitter/internal/network/t;->a(Lcom/twitter/util/y;)Z

    .line 137
    return-void
.end method

.method static synthetic a(Lcom/twitter/library/network/forecaster/c;)Lddj;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/twitter/library/network/forecaster/c;->f:Lddj;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/twitter/library/network/forecaster/NetworkQuality;)V
    .locals 2

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/network/forecaster/c;->e:Lcom/twitter/library/network/forecaster/NetworkQuality;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 228
    :goto_0
    monitor-exit p0

    return-void

    .line 226
    :cond_0
    :try_start_1
    new-instance v0, Lcom/twitter/library/network/forecaster/h;

    iget-object v1, p0, Lcom/twitter/library/network/forecaster/c;->e:Lcom/twitter/library/network/forecaster/NetworkQuality;

    invoke-direct {v0, v1, p1}, Lcom/twitter/library/network/forecaster/h;-><init>(Lcom/twitter/library/network/forecaster/NetworkQuality;Lcom/twitter/library/network/forecaster/NetworkQuality;)V

    invoke-virtual {p0, v0}, Lcom/twitter/library/network/forecaster/c;->a(Ljava/lang/Object;)V

    .line 227
    iput-object p1, p0, Lcom/twitter/library/network/forecaster/c;->e:Lcom/twitter/library/network/forecaster/NetworkQuality;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/twitter/library/network/forecaster/c;Lcom/twitter/platform/q;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/twitter/library/network/forecaster/c;->a(Lcom/twitter/platform/q;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/library/network/forecaster/c;Lcom/twitter/util/units/data/Data;Lcom/twitter/util/units/duration/Duration;Lddj;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/library/network/forecaster/c;->a(Lcom/twitter/util/units/data/Data;Lcom/twitter/util/units/duration/Duration;Lddj;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/library/network/forecaster/c;Lcom/twitter/util/units/duration/Duration;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/twitter/library/network/forecaster/c;->a(Lcom/twitter/util/units/duration/Duration;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/library/network/forecaster/c;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/twitter/library/network/forecaster/c;->a(Z)V

    return-void
.end method

.method private declared-synchronized a(Lcom/twitter/platform/TwRadioType;)V
    .locals 5

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/twitter/library/network/forecaster/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {p1}, Lcom/twitter/library/network/forecaster/i;->b(Lcom/twitter/platform/TwRadioType;)Lcom/twitter/util/units/bitrate/KilobitsPerSecond;

    move-result-object v0

    move-object v1, v0

    .line 168
    :goto_0
    invoke-direct {p0}, Lcom/twitter/library/network/forecaster/c;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    invoke-static {p1}, Lcom/twitter/library/network/forecaster/i;->a(Lcom/twitter/platform/TwRadioType;)Lcom/twitter/util/units/bitrate/KilobitsPerSecond;

    move-result-object v0

    .line 171
    :goto_1
    new-instance v2, Lddj;

    const/16 v3, 0xa

    sget-object v4, Lcom/twitter/library/network/forecaster/c;->b:Lcom/twitter/util/units/data/Kibibytes;

    invoke-direct {v2, v3, v4, v1}, Lddj;-><init>(ILjava/lang/Number;Ljava/lang/Number;)V

    iput-object v2, p0, Lcom/twitter/library/network/forecaster/c;->f:Lddj;

    .line 172
    new-instance v1, Lddj;

    const/16 v2, 0xa

    sget-object v3, Lcom/twitter/library/network/forecaster/c;->b:Lcom/twitter/util/units/data/Kibibytes;

    invoke-direct {v1, v2, v3, v0}, Lddj;-><init>(ILjava/lang/Number;Ljava/lang/Number;)V

    iput-object v1, p0, Lcom/twitter/library/network/forecaster/c;->g:Lddj;

    .line 174
    new-instance v0, Lddl;

    const/16 v1, 0xa

    sget-object v2, Lcom/twitter/library/network/forecaster/c;->c:Lcom/twitter/util/units/duration/Milliseconds;

    invoke-direct {v0, v1, v2}, Lddl;-><init>(ILjava/lang/Number;)V

    iput-object v0, p0, Lcom/twitter/library/network/forecaster/c;->h:Lddl;

    .line 176
    invoke-virtual {p0}, Lcom/twitter/library/network/forecaster/c;->a()Lcom/twitter/library/network/forecaster/NetworkQuality;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/library/network/forecaster/c;->a(Lcom/twitter/library/network/forecaster/NetworkQuality;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 166
    :cond_0
    :try_start_1
    sget-object v0, Lcom/twitter/util/units/bitrate/KilobitsPerSecond;->a:Lcom/twitter/util/units/bitrate/KilobitsPerSecond;

    move-object v1, v0

    goto :goto_0

    .line 169
    :cond_1
    sget-object v0, Lcom/twitter/util/units/bitrate/KilobitsPerSecond;->a:Lcom/twitter/util/units/bitrate/KilobitsPerSecond;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/twitter/platform/q;)V
    .locals 2

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/twitter/platform/q;->a()Lcom/twitter/platform/TwRadioType;

    move-result-object v0

    sget-object v1, Lcom/twitter/platform/TwRadioType;->a:Lcom/twitter/platform/TwRadioType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/library/network/forecaster/c;->i:Z

    .line 148
    invoke-interface {p1}, Lcom/twitter/platform/q;->a()Lcom/twitter/platform/TwRadioType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/library/network/forecaster/c;->a(Lcom/twitter/platform/TwRadioType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/twitter/util/units/data/Data;Lcom/twitter/util/units/duration/Duration;Lddj;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/units/data/Data;",
            "Lcom/twitter/util/units/duration/Duration;",
            "Lddj",
            "<",
            "Lcom/twitter/util/units/data/Kibibytes;",
            "Lcom/twitter/util/units/bitrate/KilobitsPerSecond;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/twitter/library/network/forecaster/c;->a:Lcom/twitter/util/units/data/Kibibytes;

    invoke-virtual {p1, v2}, Lcom/twitter/util/units/data/Data;->a(Lcom/twitter/util/units/Unit;)I

    move-result v2

    if-gtz v2, :cond_1

    move v2, v0

    .line 192
    :goto_0
    sget-object v3, Lcom/twitter/util/units/duration/Milliseconds;->a:Lcom/twitter/util/units/duration/Milliseconds;

    invoke-virtual {p2, v3}, Lcom/twitter/util/units/duration/Duration;->a(Lcom/twitter/util/units/Unit;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-gtz v3, :cond_2

    .line 193
    :goto_1
    if-nez v2, :cond_0

    if-eqz v0, :cond_3

    .line 199
    :cond_0
    :goto_2
    monitor-exit p0

    return-void

    :cond_1
    move v2, v1

    .line 191
    goto :goto_0

    :cond_2
    move v0, v1

    .line 192
    goto :goto_1

    .line 197
    :cond_3
    :try_start_1
    new-instance v0, Lcom/twitter/util/units/data/Kibibytes;

    invoke-direct {v0, p1}, Lcom/twitter/util/units/data/Kibibytes;-><init>(Lcom/twitter/util/units/data/Data;)V

    new-instance v1, Lcom/twitter/util/units/bitrate/KilobitsPerSecond;

    invoke-direct {v1, p1, p2}, Lcom/twitter/util/units/bitrate/KilobitsPerSecond;-><init>(Lcom/twitter/util/units/data/Data;Lcom/twitter/util/units/duration/Duration;)V

    invoke-virtual {p3, v0, v1}, Lddj;->a(Ljava/lang/Number;Ljava/lang/Number;)V

    .line 198
    invoke-virtual {p0}, Lcom/twitter/library/network/forecaster/c;->a()Lcom/twitter/library/network/forecaster/NetworkQuality;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/library/network/forecaster/c;->a(Lcom/twitter/library/network/forecaster/NetworkQuality;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/twitter/util/units/duration/Duration;)V
    .locals 2

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/twitter/util/units/duration/Milliseconds;->a:Lcom/twitter/util/units/duration/Milliseconds;

    invoke-virtual {p1, v0}, Lcom/twitter/util/units/duration/Duration;->a(Lcom/twitter/util/units/Unit;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    .line 208
    :goto_0
    if-eqz v0, :cond_1

    .line 213
    :goto_1
    monitor-exit p0

    return-void

    .line 207
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 212
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/twitter/library/network/forecaster/c;->h:Lddl;

    new-instance v1, Lcom/twitter/util/units/duration/Milliseconds;

    invoke-direct {v1, p1}, Lcom/twitter/util/units/duration/Milliseconds;-><init>(Lcom/twitter/util/units/duration/Duration;)V

    invoke-virtual {v0, v1}, Lddl;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/twitter/library/network/forecaster/c;->j:Z

    .line 154
    invoke-virtual {p0}, Lcom/twitter/library/network/forecaster/c;->a()Lcom/twitter/library/network/forecaster/NetworkQuality;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/library/network/forecaster/c;->a(Lcom/twitter/library/network/forecaster/NetworkQuality;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/twitter/library/network/forecaster/c;)Lddj;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/twitter/library/network/forecaster/c;->g:Lddj;

    return-object v0
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/twitter/library/network/forecaster/c;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/library/network/forecaster/c;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a()Lcom/twitter/library/network/forecaster/NetworkQuality;
    .locals 4

    .prologue
    .line 237
    monitor-enter p0

    .line 238
    :try_start_0
    invoke-direct {p0}, Lcom/twitter/library/network/forecaster/c;->f()Z

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/library/network/forecaster/c;->d()Lcom/twitter/util/units/bitrate/KilobitsPerSecond;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/library/network/forecaster/c;->e:Lcom/twitter/library/network/forecaster/NetworkQuality;

    .line 237
    invoke-static {v0, v1, v2}, Lcom/twitter/library/network/forecaster/NetworkQuality;->a(ZLcom/twitter/util/units/bitrate/KilobitsPerSecond;Lcom/twitter/library/network/forecaster/NetworkQuality;)Lcom/twitter/library/network/forecaster/NetworkQuality;

    move-result-object v0

    .line 241
    invoke-direct {p0}, Lcom/twitter/library/network/forecaster/c;->f()Z

    move-result v1

    invoke-virtual {p0}, Lcom/twitter/library/network/forecaster/c;->c()Lcom/twitter/util/units/bitrate/KilobitsPerSecond;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/library/network/forecaster/c;->e:Lcom/twitter/library/network/forecaster/NetworkQuality;

    .line 240
    invoke-static {v1, v2, v3}, Lcom/twitter/library/network/forecaster/NetworkQuality;->b(ZLcom/twitter/util/units/bitrate/KilobitsPerSecond;Lcom/twitter/library/network/forecaster/NetworkQuality;)Lcom/twitter/library/network/forecaster/NetworkQuality;

    move-result-object v1

    .line 243
    invoke-static {v0, v1}, Lcom/twitter/library/network/forecaster/NetworkQuality;->a(Lcom/twitter/library/network/forecaster/NetworkQuality;Lcom/twitter/library/network/forecaster/NetworkQuality;)Lcom/twitter/library/network/forecaster/NetworkQuality;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Lcom/twitter/library/network/forecaster/NetworkQuality;
    .locals 1

    .prologue
    .line 253
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/network/forecaster/c;->e:Lcom/twitter/library/network/forecaster/NetworkQuality;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Lcom/twitter/util/units/bitrate/KilobitsPerSecond;
    .locals 4

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/twitter/util/units/bitrate/KilobitsPerSecond;

    iget-object v1, p0, Lcom/twitter/library/network/forecaster/c;->g:Lddj;

    invoke-virtual {v1}, Lddj;->c()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/util/units/bitrate/KilobitsPerSecond;-><init>(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Lcom/twitter/util/units/bitrate/KilobitsPerSecond;
    .locals 4

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/twitter/util/units/bitrate/KilobitsPerSecond;

    iget-object v1, p0, Lcom/twitter/library/network/forecaster/c;->f:Lddj;

    invoke-virtual {v1}, Lddj;->c()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/util/units/bitrate/KilobitsPerSecond;-><init>(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Lcom/twitter/util/units/duration/Milliseconds;
    .locals 4

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/twitter/util/units/duration/Milliseconds;

    iget-object v1, p0, Lcom/twitter/library/network/forecaster/c;->h:Lddl;

    invoke-virtual {v1}, Lddl;->c()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/util/units/duration/Milliseconds;-><init>(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
