.class public Laj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lai;


# instance fields
.field private final a:Ljava/io/File;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lbk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Laj;->a:Ljava/io/File;

    .line 28
    return-void
.end method

.method public static a(Ljava/io/File;)Laj;
    .locals 1

    .prologue
    .line 68
    if-eqz p0, :cond_0

    new-instance v0, Laj;

    invoke-direct {v0, p0}, Laj;-><init>(Ljava/io/File;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Laj;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Laj;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Ljava/io/File;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Laj;->a:Ljava/io/File;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 51
    if-eqz p1, :cond_0

    instance-of v0, p1, Laj;

    if-nez v0, :cond_1

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0

    .line 54
    :cond_1
    check-cast p1, Laj;

    .line 55
    iget-object v0, p0, Laj;->a:Ljava/io/File;

    iget-object v1, p1, Laj;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Laj;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    return v0
.end method
