.class abstract Ldka;
.super Ldjy;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ldjy",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final e:J


# instance fields
.field private volatile producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-class v0, Ldka;

    const-string/jumbo v1, "producerIndex"

    invoke-static {v0, v1}, Ldks;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ldka;->e:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Ldjy;-><init>(I)V

    .line 36
    return-void
.end method


# virtual methods
.method protected final b()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Ldka;->producerIndex:J

    return-wide v0
.end method

.method protected final c(JJ)Z
    .locals 9

    .prologue
    .line 43
    sget-object v0, Ldks;->a:Lsun/misc/Unsafe;

    sget-wide v2, Ldka;->e:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method
