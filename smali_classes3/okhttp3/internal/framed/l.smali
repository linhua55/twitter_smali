.class public Lokhttp3/internal/framed/l;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:Ljava/net/Socket;

.field private b:Ljava/lang/String;

.field private c:Lokio/j;

.field private d:Lokio/i;

.field private e:Lokhttp3/internal/framed/m;

.field private f:Lokhttp3/Protocol;

.field private g:Lokhttp3/internal/framed/an;

.field private h:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    sget-object v0, Lokhttp3/internal/framed/m;->j:Lokhttp3/internal/framed/m;

    iput-object v0, p0, Lokhttp3/internal/framed/l;->e:Lokhttp3/internal/framed/m;

    .line 524
    sget-object v0, Lokhttp3/Protocol;->c:Lokhttp3/Protocol;

    iput-object v0, p0, Lokhttp3/internal/framed/l;->f:Lokhttp3/Protocol;

    .line 525
    sget-object v0, Lokhttp3/internal/framed/an;->a:Lokhttp3/internal/framed/an;

    iput-object v0, p0, Lokhttp3/internal/framed/l;->g:Lokhttp3/internal/framed/an;

    .line 533
    iput-boolean p1, p0, Lokhttp3/internal/framed/l;->h:Z

    .line 534
    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/l;)Lokhttp3/Protocol;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lokhttp3/internal/framed/l;->f:Lokhttp3/Protocol;

    return-object v0
.end method

.method static synthetic b(Lokhttp3/internal/framed/l;)Lokhttp3/internal/framed/an;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lokhttp3/internal/framed/l;->g:Lokhttp3/internal/framed/an;

    return-object v0
.end method

.method static synthetic c(Lokhttp3/internal/framed/l;)Z
    .locals 1

    .prologue
    .line 518
    iget-boolean v0, p0, Lokhttp3/internal/framed/l;->h:Z

    return v0
.end method

.method static synthetic d(Lokhttp3/internal/framed/l;)Lokhttp3/internal/framed/m;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lokhttp3/internal/framed/l;->e:Lokhttp3/internal/framed/m;

    return-object v0
.end method

.method static synthetic e(Lokhttp3/internal/framed/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lokhttp3/internal/framed/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lokhttp3/internal/framed/l;)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lokhttp3/internal/framed/l;->a:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic g(Lokhttp3/internal/framed/l;)Lokio/i;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lokhttp3/internal/framed/l;->d:Lokio/i;

    return-object v0
.end method

.method static synthetic h(Lokhttp3/internal/framed/l;)Lokio/j;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lokhttp3/internal/framed/l;->c:Lokio/j;

    return-object v0
.end method


# virtual methods
.method public a()Lokhttp3/internal/framed/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 566
    new-instance v0, Lokhttp3/internal/framed/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/framed/d;-><init>(Lokhttp3/internal/framed/l;Lokhttp3/internal/framed/e;)V

    return-object v0
.end method

.method public a(Ljava/net/Socket;Ljava/lang/String;Lokio/j;Lokio/i;)Lokhttp3/internal/framed/l;
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lokhttp3/internal/framed/l;->a:Ljava/net/Socket;

    .line 544
    iput-object p2, p0, Lokhttp3/internal/framed/l;->b:Ljava/lang/String;

    .line 545
    iput-object p3, p0, Lokhttp3/internal/framed/l;->c:Lokio/j;

    .line 546
    iput-object p4, p0, Lokhttp3/internal/framed/l;->d:Lokio/i;

    .line 547
    return-object p0
.end method

.method public a(Lokhttp3/Protocol;)Lokhttp3/internal/framed/l;
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lokhttp3/internal/framed/l;->f:Lokhttp3/Protocol;

    .line 557
    return-object p0
.end method

.method public a(Lokhttp3/internal/framed/m;)Lokhttp3/internal/framed/l;
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lokhttp3/internal/framed/l;->e:Lokhttp3/internal/framed/m;

    .line 552
    return-object p0
.end method
