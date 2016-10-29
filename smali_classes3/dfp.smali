.class public final Ldfp;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final synthetic a:Ldfi;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Lokio/ab;

.field private final e:[J


# direct methods
.method private constructor <init>(Ldfi;Ljava/lang/String;J[Lokio/ab;[J)V
    .locals 1

    .prologue
    .line 789
    iput-object p1, p0, Ldfp;->a:Ldfi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 790
    iput-object p2, p0, Ldfp;->b:Ljava/lang/String;

    .line 791
    iput-wide p3, p0, Ldfp;->c:J

    .line 792
    iput-object p5, p0, Ldfp;->d:[Lokio/ab;

    .line 793
    iput-object p6, p0, Ldfp;->e:[J

    .line 794
    return-void
.end method

.method synthetic constructor <init>(Ldfi;Ljava/lang/String;J[Lokio/ab;[JLdfj;)V
    .locals 1

    .prologue
    .line 783
    invoke-direct/range {p0 .. p6}, Ldfp;-><init>(Ldfi;Ljava/lang/String;J[Lokio/ab;[J)V

    return-void
.end method


# virtual methods
.method public a()Ldfm;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 805
    iget-object v0, p0, Ldfp;->a:Ldfi;

    iget-object v1, p0, Ldfp;->b:Ljava/lang/String;

    iget-wide v2, p0, Ldfp;->c:J

    invoke-static {v0, v1, v2, v3}, Ldfi;->a(Ldfi;Ljava/lang/String;J)Ldfm;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lokio/ab;
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Ldfp;->d:[Lokio/ab;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 819
    iget-object v1, p0, Ldfp;->d:[Lokio/ab;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 820
    invoke-static {v3}, Ldey;->a(Ljava/io/Closeable;)V

    .line 819
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 822
    :cond_0
    return-void
.end method
