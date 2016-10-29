.class public final Laro;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:Z

.field public final f:Z

.field public final g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Larq;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Larq;->a(Larq;)J

    move-result-wide v0

    iput-wide v0, p0, Laro;->b:J

    .line 25
    invoke-static {p1}, Larq;->b(Larq;)J

    move-result-wide v0

    iput-wide v0, p0, Laro;->c:J

    .line 26
    invoke-static {p1}, Larq;->c(Larq;)J

    move-result-wide v0

    iput-wide v0, p0, Laro;->d:J

    .line 27
    invoke-static {p1}, Larq;->d(Larq;)Z

    move-result v0

    iput-boolean v0, p0, Laro;->e:Z

    .line 28
    invoke-static {p1}, Larq;->e(Larq;)Z

    move-result v0

    iput-boolean v0, p0, Laro;->f:Z

    .line 29
    invoke-static {p1}, Larq;->f(Larq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laro;->g:Ljava/lang/String;

    .line 30
    invoke-static {p1}, Larq;->g(Larq;)I

    move-result v0

    iput v0, p0, Laro;->a:I

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Larq;Larp;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Laro;-><init>(Larq;)V

    return-void
.end method
