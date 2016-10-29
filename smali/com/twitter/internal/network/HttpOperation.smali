.class public abstract Lcom/twitter/internal/network/HttpOperation;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final a:Lcom/twitter/internal/network/i;

.field private static final g:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field protected final b:Lcom/twitter/platform/u;

.field protected final c:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

.field protected final d:Ljava/net/URI;

.field protected final e:Lcom/twitter/internal/network/i;

.field protected f:J

.field private h:Lorg/apache/http/HttpEntity;

.field private final i:Lcom/twitter/internal/network/d;

.field private final j:Lcom/twitter/internal/network/d;

.field private final k:Lcom/twitter/internal/network/t;

.field private l:Lcom/twitter/util/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/y",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final o:Lcom/twitter/internal/network/k;

.field private volatile p:Z

.field private volatile q:Z

.field private r:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private t:I

.field private u:Ljava/util/zip/Inflater;

.field private v:[Lcom/twitter/internal/network/HttpOperation$Protocol;

.field private w:J

.field private x:Z

.field private y:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 125
    new-instance v0, Lcom/twitter/internal/network/b;

    invoke-direct {v0}, Lcom/twitter/internal/network/b;-><init>()V

    sput-object v0, Lcom/twitter/internal/network/HttpOperation;->a:Lcom/twitter/internal/network/i;

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/twitter/internal/network/HttpOperation;->g:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method protected constructor <init>(Lcom/twitter/internal/network/HttpOperation$RequestMethod;Ljava/net/URI;Lcom/twitter/internal/network/i;)V
    .locals 7

    .prologue
    .line 270
    .line 273
    invoke-static {}, Lcom/twitter/platform/PlatformContext;->e()Lcom/twitter/platform/PlatformContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/platform/PlatformContext;->a()Lcom/twitter/platform/u;

    move-result-object v4

    .line 274
    invoke-static {}, Lcom/twitter/internal/network/d;->a()Lcom/twitter/internal/network/d;

    move-result-object v5

    .line 275
    invoke-static {}, Lcom/twitter/internal/network/t;->a()Lcom/twitter/internal/network/t;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 270
    invoke-direct/range {v0 .. v6}, Lcom/twitter/internal/network/HttpOperation;-><init>(Lcom/twitter/internal/network/HttpOperation$RequestMethod;Ljava/net/URI;Lcom/twitter/internal/network/i;Lcom/twitter/platform/u;Lcom/twitter/internal/network/d;Lcom/twitter/internal/network/t;)V

    .line 276
    return-void
.end method

.method protected constructor <init>(Lcom/twitter/internal/network/HttpOperation$RequestMethod;Ljava/net/URI;Lcom/twitter/internal/network/i;Lcom/twitter/platform/u;Lcom/twitter/internal/network/d;Lcom/twitter/internal/network/t;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-wide v4, p0, Lcom/twitter/internal/network/HttpOperation;->f:J

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->h:Lorg/apache/http/HttpEntity;

    .line 152
    new-instance v0, Lcom/twitter/internal/network/d;

    invoke-direct {v0}, Lcom/twitter/internal/network/d;-><init>()V

    iput-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->i:Lcom/twitter/internal/network/d;

    .line 164
    iput-boolean v2, p0, Lcom/twitter/internal/network/HttpOperation;->m:Z

    .line 167
    invoke-static {}, Lcom/twitter/util/collection/MutableMap;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->n:Ljava/util/Map;

    .line 168
    new-instance v0, Lcom/twitter/internal/network/k;

    invoke-direct {v0}, Lcom/twitter/internal/network/k;-><init>()V

    iput-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->o:Lcom/twitter/internal/network/k;

    .line 174
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/internal/network/HttpOperation;->t:I

    .line 176
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/twitter/internal/network/HttpOperation$Protocol;

    sget-object v1, Lcom/twitter/internal/network/HttpOperation$Protocol;->b:Lcom/twitter/internal/network/HttpOperation$Protocol;

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->v:[Lcom/twitter/internal/network/HttpOperation$Protocol;

    .line 178
    iput-boolean v2, p0, Lcom/twitter/internal/network/HttpOperation;->x:Z

    .line 179
    iput-wide v4, p0, Lcom/twitter/internal/network/HttpOperation;->y:J

    .line 252
    iput-object p4, p0, Lcom/twitter/internal/network/HttpOperation;->b:Lcom/twitter/platform/u;

    .line 253
    iput-object p5, p0, Lcom/twitter/internal/network/HttpOperation;->j:Lcom/twitter/internal/network/d;

    .line 254
    iput-object p6, p0, Lcom/twitter/internal/network/HttpOperation;->k:Lcom/twitter/internal/network/t;

    .line 256
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->b:Lcom/twitter/platform/u;

    invoke-interface {v0}, Lcom/twitter/platform/u;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/internal/network/HttpOperation;->w:J

    .line 257
    iput-object p1, p0, Lcom/twitter/internal/network/HttpOperation;->c:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    .line 258
    iput-object p2, p0, Lcom/twitter/internal/network/HttpOperation;->d:Ljava/net/URI;

    .line 259
    sget-object v0, Lcom/twitter/internal/network/HttpOperation;->a:Lcom/twitter/internal/network/i;

    invoke-static {p3, v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/network/i;

    iput-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->e:Lcom/twitter/internal/network/i;

    .line 260
    return-void
.end method

.method private static a(Ldbu;)J
    .locals 2

    .prologue
    .line 640
    if-eqz p0, :cond_0

    .line 641
    invoke-virtual {p0}, Ldbu;->a()J

    move-result-wide v0

    .line 643
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 584
    if-eqz p1, :cond_0

    .line 585
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/internal/network/HttpOperation;->a(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 589
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(IJ)V
    .locals 2

    .prologue
    .line 840
    iget-wide v0, p0, Lcom/twitter/internal/network/HttpOperation;->w:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 846
    :goto_0
    return-void

    .line 843
    :cond_0
    iget-wide v0, p0, Lcom/twitter/internal/network/HttpOperation;->w:J

    sub-long v0, p2, v0

    long-to-int v0, v0

    .line 844
    iget-object v1, p0, Lcom/twitter/internal/network/HttpOperation;->o:Lcom/twitter/internal/network/k;

    iget-object v1, v1, Lcom/twitter/internal/network/k;->t:[I

    aput v0, v1, p1

    .line 845
    iput-wide p2, p0, Lcom/twitter/internal/network/HttpOperation;->w:J

    goto :goto_0
.end method

.method private a(Lcom/twitter/internal/network/k;Ljava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/network/k;",
            "TS;)V"
        }
    .end annotation

    .prologue
    .line 665
    iget-object v5, p1, Lcom/twitter/internal/network/k;->m:Ljava/lang/String;

    .line 666
    iget-object v4, p1, Lcom/twitter/internal/network/k;->l:Ljava/lang/String;

    .line 667
    iget v3, p1, Lcom/twitter/internal/network/k;->k:I

    .line 668
    const/4 v2, 0x0

    .line 669
    const/4 v6, 0x0

    .line 670
    const/4 v0, 0x0

    .line 671
    const/4 v8, 0x0

    .line 674
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/twitter/internal/network/HttpOperation;->d(Ljava/lang/Object;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 675
    if-eqz v1, :cond_b

    .line 676
    :try_start_1
    new-instance v7, Ldbu;

    invoke-direct {v7, v1}, Ldbu;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 678
    :try_start_2
    iget-object v2, p0, Lcom/twitter/internal/network/HttpOperation;->l:Lcom/twitter/util/y;

    if-eqz v2, :cond_2

    new-instance v6, Ldbw;

    iget-object v2, p0, Lcom/twitter/internal/network/HttpOperation;->l:Lcom/twitter/util/y;

    invoke-direct {v6, v7, v3, v2}, Ldbw;-><init>(Ljava/io/InputStream;ILcom/twitter/util/y;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 682
    :goto_0
    if-eqz v4, :cond_3

    :try_start_3
    const-string/jumbo v1, "application/octet-stream"

    .line 683
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "video/mp4"

    .line 684
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "binary/octet-stream"

    .line 685
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "application/zip"

    .line 686
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "text/event-stream"

    .line 687
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 688
    invoke-static {v4}, Ldbv;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "image/"

    .line 689
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 690
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported content type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 759
    :catch_0
    move-exception v1

    move v2, v8

    move-object v3, v0

    move-object v0, v1

    move-object v1, v7

    .line 763
    :goto_1
    if-nez v2, :cond_0

    .line 764
    if-eqz v1, :cond_7

    :try_start_4
    invoke-virtual {v1}, Ldbu;->d()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, p1, Lcom/twitter/internal/network/k;->d:Z

    .line 765
    invoke-virtual {p0, v0}, Lcom/twitter/internal/network/HttpOperation;->b(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 768
    :cond_0
    invoke-static {v3}, Lday;->a(Ljava/io/Closeable;)V

    .line 769
    invoke-static {v6}, Lday;->a(Ljava/io/Closeable;)V

    .line 771
    :goto_3
    invoke-static {v1}, Lcom/twitter/internal/network/HttpOperation;->a(Ldbu;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/twitter/internal/network/k;->f:J

    .line 772
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ldbu;->c()J

    move-result-wide v2

    :goto_4
    iput-wide v2, p1, Lcom/twitter/internal/network/k;->i:J

    .line 773
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ldbu;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->o:Lcom/twitter/internal/network/k;

    invoke-virtual {v1}, Ldbu;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/twitter/internal/network/k;->r:J

    .line 776
    :cond_1
    return-void

    .line 678
    :cond_2
    :try_start_5
    new-instance v6, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1000

    invoke-direct {v6, v7, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_0

    .line 759
    :catch_1
    move-exception v2

    move-object v3, v0

    move-object v6, v1

    move-object v0, v2

    move-object v1, v7

    move v2, v8

    goto :goto_1

    .line 693
    :cond_3
    if-eqz v5, :cond_a

    .line 694
    :try_start_6
    const-string/jumbo v1, "gzip"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 701
    const/16 v1, 0xe

    new-array v1, v1, [B

    .line 702
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 704
    new-instance v2, Ljava/io/SequenceInputStream;

    new-instance v9, Ljava/io/ByteArrayInputStream;

    const/4 v10, 0x0

    invoke-direct {v9, v1, v10, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v2, v9, v6}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 708
    :try_start_7
    invoke-virtual {p0, v2}, Lcom/twitter/internal/network/HttpOperation;->a(Ljava/io/InputStream;)Ljava/util/zip/GZIPInputStream;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result-object v6

    .line 709
    const/4 v3, -0x1

    move-object v2, v6

    .line 716
    :goto_5
    :try_start_8
    iget v1, p1, Lcom/twitter/internal/network/k;->a:I

    const/16 v6, 0x190

    if-lt v1, v6, :cond_9

    iget v1, p1, Lcom/twitter/internal/network/k;->a:I

    const/16 v6, 0x258

    if-ge v1, v6, :cond_9

    iget-boolean v1, p0, Lcom/twitter/internal/network/HttpOperation;->m:Z

    if-eqz v1, :cond_9

    .line 719
    invoke-static {v4}, Ldbv;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 720
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 721
    const/16 v1, 0x1000

    :try_start_9
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->mark(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 723
    const/16 v1, 0x1000

    :try_start_a
    new-array v1, v1, [B

    .line 724
    const/4 v2, 0x0

    const/16 v9, 0x1000

    invoke-virtual {v6, v1, v2, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 725
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "UTF-8"

    .line 729
    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-direct {v9, v1, v10, v2, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v9, p1, Lcom/twitter/internal/network/k;->s:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 733
    :try_start_b
    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V

    .line 738
    :goto_6
    new-instance v2, Ldbc;

    invoke-direct {v2, v6}, Ldbc;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 739
    :try_start_c
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->e:Lcom/twitter/internal/network/i;

    iget v1, p1, Lcom/twitter/internal/network/k;->a:I

    invoke-interface/range {v0 .. v5}, Lcom/twitter/internal/network/i;->a(ILjava/io/InputStream;ILjava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->b:Lcom/twitter/platform/u;

    invoke-interface {v0}, Lcom/twitter/platform/u;->b()J

    move-result-wide v0

    .line 743
    invoke-static {v2}, Lcom/twitter/internal/network/HttpOperation;->a(Ldbc;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 744
    invoke-static {v2}, Lday;->a(Ljava/io/InputStream;)I

    .line 746
    :cond_4
    iget-object v3, p0, Lcom/twitter/internal/network/HttpOperation;->b:Lcom/twitter/platform/u;

    invoke-interface {v3}, Lcom/twitter/platform/u;->b()J

    move-result-wide v4

    sub-long v0, v4, v0

    iput-wide v0, p1, Lcom/twitter/internal/network/k;->h:J

    .line 753
    invoke-virtual {v7}, Ldbu;->e()Ljava/io/IOException;

    move-result-object v0

    .line 754
    if-eqz v0, :cond_6

    .line 755
    iget-boolean v1, p0, Lcom/twitter/internal/network/HttpOperation;->x:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 756
    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 759
    :catch_2
    move-exception v0

    move-object v3, v2

    move v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 710
    :cond_5
    :try_start_e
    const-string/jumbo v1, "deflate"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 711
    new-instance v2, Ljava/util/zip/InflaterInputStream;

    invoke-virtual {p0}, Lcom/twitter/internal/network/HttpOperation;->s()Ljava/util/zip/Inflater;

    move-result-object v1

    invoke-direct {v2, v6, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 712
    const/4 v3, -0x1

    goto/16 :goto_5

    .line 730
    :catch_3
    move-exception v1

    .line 733
    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_6

    .line 768
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_7
    invoke-static {v2}, Lday;->a(Ljava/io/Closeable;)V

    .line 769
    invoke-static {v6}, Lday;->a(Ljava/io/Closeable;)V

    throw v0

    .line 733
    :catchall_1
    move-exception v1

    :try_start_f
    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V

    throw v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_6
    move-object v0, v6

    move-object v1, v7

    .line 768
    :goto_8
    invoke-static {v2}, Lday;->a(Ljava/io/Closeable;)V

    .line 769
    invoke-static {v0}, Lday;->a(Ljava/io/Closeable;)V

    goto/16 :goto_3

    .line 764
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 772
    :cond_8
    const-wide/16 v2, 0x0

    goto/16 :goto_4

    .line 768
    :catchall_2
    move-exception v2

    move-object v6, v1

    move-object v12, v0

    move-object v0, v2

    move-object v2, v12

    goto :goto_7

    :catchall_3
    move-exception v1

    move-object v6, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_7

    :catchall_4
    move-exception v1

    move-object v6, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_7

    :catchall_5
    move-exception v0

    goto :goto_7

    :catchall_6
    move-exception v0

    move-object v2, v3

    goto :goto_7

    .line 759
    :catch_4
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v2

    move v2, v8

    goto/16 :goto_1

    :catch_5
    move-exception v3

    move-object v6, v1

    move-object v1, v2

    move v2, v8

    move-object v12, v3

    move-object v3, v0

    move-object v0, v12

    goto/16 :goto_1

    :catch_6
    move-exception v1

    move-object v3, v0

    move-object v6, v2

    move-object v0, v1

    move v2, v8

    move-object v1, v7

    goto/16 :goto_1

    :catch_7
    move-exception v1

    move-object v3, v0

    move-object v6, v2

    move-object v0, v1

    move v2, v8

    move-object v1, v7

    goto/16 :goto_1

    :catch_8
    move-exception v0

    move-object v3, v2

    move-object v1, v7

    move v2, v8

    goto/16 :goto_1

    :cond_9
    move-object v6, v2

    goto/16 :goto_6

    :cond_a
    move-object v2, v6

    goto/16 :goto_5

    :cond_b
    move-object v12, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v12

    goto :goto_8
.end method

.method private static a(Ldbc;)Z
    .locals 1

    .prologue
    .line 548
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ldbc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)V
    .locals 2

    .prologue
    .line 836
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->b:Lcom/twitter/platform/u;

    invoke-interface {v0}, Lcom/twitter/platform/u;->b()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/internal/network/HttpOperation;->a(IJ)V

    .line 837
    return-void
.end method

.method private c(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->i:Lcom/twitter/internal/network/d;

    invoke-virtual {v0, p0, p1}, Lcom/twitter/internal/network/d;->a(Lcom/twitter/internal/network/HttpOperation;Ljava/lang/Exception;)V

    .line 832
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->j:Lcom/twitter/internal/network/d;

    invoke-virtual {v0, p0, p1}, Lcom/twitter/internal/network/d;->a(Lcom/twitter/internal/network/HttpOperation;Ljava/lang/Exception;)V

    .line 833
    return-void
.end method

.method private l(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 532
    iget v0, p0, Lcom/twitter/internal/network/HttpOperation;->t:I

    if-ltz v0, :cond_0

    .line 533
    iget v0, p0, Lcom/twitter/internal/network/HttpOperation;->t:I

    invoke-virtual {p0, p1, v0}, Lcom/twitter/internal/network/HttpOperation;->a(Ljava/lang/Object;I)V

    .line 537
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/internal/network/HttpOperation;->e()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/twitter/internal/network/HttpOperation;->a(Ljava/lang/Object;Lorg/apache/http/HttpEntity;)V

    .line 540
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 541
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 542
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v1}, Lcom/twitter/internal/network/HttpOperation;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 545
    :cond_2
    return-void
.end method

.method private m(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 790
    if-nez p1, :cond_1

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    invoke-direct {p0, p1}, Lcom/twitter/internal/network/HttpOperation;->n(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v0

    .line 794
    if-eqz v0, :cond_0

    .line 795
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 796
    iget-object v2, p0, Lcom/twitter/internal/network/HttpOperation;->b:Lcom/twitter/platform/u;

    invoke-interface {v2}, Lcom/twitter/platform/u;->a()J

    move-result-wide v2

    .line 797
    sget-object v4, Lcom/twitter/internal/network/HttpOperation;->g:Ljava/util/concurrent/atomic/AtomicLong;

    sub-long/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0
.end method

.method private n(Ljava/lang/Object;)Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Ljava/util/Date;"
        }
    .end annotation

    .prologue
    .line 803
    const-string/jumbo v0, "Date"

    invoke-direct {p0, p1, v0}, Lcom/twitter/internal/network/HttpOperation;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 804
    if-eqz v0, :cond_0

    .line 806
    :try_start_0
    sget-object v1, Lcom/twitter/util/m;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 810
    :goto_0
    return-object v0

    .line 807
    :catch_0
    move-exception v0

    .line 810
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u()V
    .locals 2

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/twitter/internal/network/HttpOperation;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 816
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Request not yet complete for this HttpOperation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 818
    :cond_0
    return-void
.end method

.method private v()V
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->i:Lcom/twitter/internal/network/d;

    invoke-virtual {v0, p0}, Lcom/twitter/internal/network/d;->a(Lcom/twitter/internal/network/HttpOperation;)V

    .line 822
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->j:Lcom/twitter/internal/network/d;

    invoke-virtual {v0, p0}, Lcom/twitter/internal/network/d;->a(Lcom/twitter/internal/network/HttpOperation;)V

    .line 823
    return-void
.end method

.method private w()V
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->i:Lcom/twitter/internal/network/d;

    invoke-virtual {v0, p0}, Lcom/twitter/internal/network/d;->b(Lcom/twitter/internal/network/HttpOperation;)V

    .line 827
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->j:Lcom/twitter/internal/network/d;

    invoke-virtual {v0, p0}, Lcom/twitter/internal/network/d;->b(Lcom/twitter/internal/network/HttpOperation;)V

    .line 828
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/internal/network/c;)Lcom/twitter/internal/network/HttpOperation;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->i:Lcom/twitter/internal/network/d;

    invoke-virtual {v0, p1}, Lcom/twitter/internal/network/d;->a(Lcom/twitter/internal/network/c;)V

    .line 462
    return-object p0
.end method

.method public a(Ljava/lang/Exception;)Lcom/twitter/internal/network/HttpOperation;
    .locals 2

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/twitter/internal/network/HttpOperation;->b()V

    .line 518
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->o:Lcom/twitter/internal/network/k;

    .line 519
    const/4 v1, 0x0

    iput v1, v0, Lcom/twitter/internal/network/k;->a:I

    .line 520
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/twitter/internal/network/k;->b:Ljava/lang/String;

    .line 521
    iput-object p1, v0, Lcom/twitter/internal/network/k;->c:Ljava/lang/Exception;

    .line 522
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/internal/network/HttpOperation;
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 294
    :goto_0
    return-object p0

    .line 290
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 291
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v1, p0, Lcom/twitter/internal/network/HttpOperation;->n:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Lorg/apache/http/HttpEntity;)Lcom/twitter/internal/network/HttpOperation;
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/twitter/internal/network/HttpOperation;->h:Lorg/apache/http/HttpEntity;

    .line 421
    return-object p0
.end method

.method protected abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 567
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/io/InputStream;)Ljava/util/zip/GZIPInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 782
    iget-boolean v0, p0, Lcom/twitter/internal/network/HttpOperation;->x:Z

    if-eqz v0, :cond_0

    new-instance v0, Ldbx;

    invoke-direct {v0, p1}, Ldbx;-><init>(Ljava/io/InputStream;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 484
    iput p1, p0, Lcom/twitter/internal/network/HttpOperation;->t:I

    .line 485
    return-void
.end method

.method public a(Lcom/twitter/util/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/y",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 657
    iput-object p1, p0, Lcom/twitter/internal/network/HttpOperation;->l:Lcom/twitter/util/y;

    .line 658
    return-void
.end method

.method protected abstract a(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;I)V"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/Object;Lorg/apache/http/HttpEntity;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lorg/apache/http/HttpEntity;",
            ")V"
        }
    .end annotation
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 606
    iput-boolean p1, p0, Lcom/twitter/internal/network/HttpOperation;->m:Z

    .line 607
    return-void
.end method

.method public final a([Lcom/twitter/internal/network/HttpOperation$Protocol;)V
    .locals 4

    .prologue
    .line 614
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 615
    invoke-virtual {p0, v2}, Lcom/twitter/internal/network/HttpOperation;->a(Lcom/twitter/internal/network/HttpOperation$Protocol;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 616
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not supported by this HttpOperation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 619
    :cond_1
    iput-object p1, p0, Lcom/twitter/internal/network/HttpOperation;->v:[Lcom/twitter/internal/network/HttpOperation$Protocol;

    .line 620
    invoke-virtual {p0, p1}, Lcom/twitter/internal/network/HttpOperation;->b([Lcom/twitter/internal/network/HttpOperation$Protocol;)V

    .line 621
    return-void
.end method

.method protected a(Lcom/twitter/internal/network/HttpOperation$Protocol;)Z
    .locals 1

    .prologue
    .line 610
    sget-object v0, Lcom/twitter/internal/network/HttpOperation$Protocol;->b:Lcom/twitter/internal/network/HttpOperation$Protocol;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract b(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/twitter/internal/network/HttpOperation;->u()V

    .line 579
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->s:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lcom/twitter/internal/network/HttpOperation;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->r:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->r:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/twitter/internal/network/HttpOperation;->e(Ljava/lang/Object;)V

    .line 233
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/internal/network/HttpOperation;->p:Z

    .line 234
    return-void
.end method

.method protected b(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 594
    invoke-direct {p0, p1}, Lcom/twitter/internal/network/HttpOperation;->c(Ljava/lang/Exception;)V

    .line 595
    invoke-virtual {p0}, Lcom/twitter/internal/network/HttpOperation;->b()V

    .line 596
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->o:Lcom/twitter/internal/network/k;

    .line 597
    const/4 v1, 0x0

    iput v1, v0, Lcom/twitter/internal/network/k;->a:I

    .line 598
    iput-object p1, v0, Lcom/twitter/internal/network/k;->c:Ljava/lang/Exception;

    .line 599
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 879
    iput-boolean p1, p0, Lcom/twitter/internal/network/HttpOperation;->x:Z

    .line 880
    return-void
.end method

.method protected b([Lcom/twitter/internal/network/HttpOperation$Protocol;)V
    .locals 0

    .prologue
    .line 628
    return-void
.end method

.method protected abstract c(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)I"
        }
    .end annotation
.end method

.method public final c()Lcom/twitter/internal/network/HttpOperation;
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 302
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->k:Lcom/twitter/internal/network/t;

    invoke-virtual {v0}, Lcom/twitter/internal/network/t;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 303
    new-instance v0, Ljava/net/NoRouteToHostException;

    const-string/jumbo v1, "Wifi only mode is enabled."

    invoke-direct {v0, v1}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/twitter/internal/network/HttpOperation;->b(Ljava/lang/Exception;)V

    .line 390
    :cond_0
    :goto_0
    return-object p0

    .line 308
    :cond_1
    iget-boolean v0, p0, Lcom/twitter/internal/network/HttpOperation;->q:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/internal/network/HttpOperation;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    invoke-direct {p0, v10}, Lcom/twitter/internal/network/HttpOperation;->b(I)V

    .line 312
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->b:Lcom/twitter/platform/u;

    invoke-interface {v0}, Lcom/twitter/platform/u;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/internal/network/HttpOperation;->y:J

    .line 313
    iput-boolean v3, p0, Lcom/twitter/internal/network/HttpOperation;->q:Z

    .line 314
    invoke-direct {p0}, Lcom/twitter/internal/network/HttpOperation;->w()V

    .line 317
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->b:Lcom/twitter/platform/u;

    invoke-interface {v0}, Lcom/twitter/platform/u;->b()J

    move-result-wide v4

    .line 319
    iget-object v6, p0, Lcom/twitter/internal/network/HttpOperation;->o:Lcom/twitter/internal/network/k;

    .line 320
    invoke-virtual {p0}, Lcom/twitter/internal/network/HttpOperation;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/twitter/internal/network/k;->p:Ljava/lang/String;

    .line 321
    const/4 v1, 0x0

    .line 322
    const/4 v0, 0x1

    .line 324
    :try_start_0
    invoke-virtual {p0}, Lcom/twitter/internal/network/HttpOperation;->a()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/internal/network/HttpOperation;->r:Ljava/lang/Object;

    .line 327
    iget-object v2, p0, Lcom/twitter/internal/network/HttpOperation;->r:Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/twitter/internal/network/HttpOperation;->l(Ljava/lang/Object;)V

    .line 328
    invoke-direct {p0, v0}, Lcom/twitter/internal/network/HttpOperation;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    const/4 v2, 0x2

    .line 331
    :try_start_1
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->r:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/twitter/internal/network/HttpOperation;->f(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 332
    :try_start_2
    invoke-direct {p0, v2}, Lcom/twitter/internal/network/HttpOperation;->b(I)V

    .line 333
    const/4 v2, 0x3

    .line 340
    invoke-virtual {p0, v0}, Lcom/twitter/internal/network/HttpOperation;->h(Ljava/lang/Object;)I

    move-result v1

    iput v1, v6, Lcom/twitter/internal/network/k;->a:I

    .line 341
    invoke-direct {p0, v2}, Lcom/twitter/internal/network/HttpOperation;->b(I)V

    .line 342
    iget-object v1, p0, Lcom/twitter/internal/network/HttpOperation;->o:Lcom/twitter/internal/network/k;

    iget-object v7, p0, Lcom/twitter/internal/network/HttpOperation;->b:Lcom/twitter/platform/u;

    invoke-interface {v7}, Lcom/twitter/platform/u;->b()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/twitter/internal/network/k;->r:J

    .line 344
    invoke-virtual {p0, v0}, Lcom/twitter/internal/network/HttpOperation;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/twitter/internal/network/k;->b:Ljava/lang/String;

    .line 345
    invoke-virtual {p0, v0}, Lcom/twitter/internal/network/HttpOperation;->c(Ljava/lang/Object;)I

    move-result v1

    iput v1, v6, Lcom/twitter/internal/network/k;->k:I

    .line 346
    invoke-virtual {p0, v0}, Lcom/twitter/internal/network/HttpOperation;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/twitter/internal/network/k;->l:Ljava/lang/String;

    .line 347
    invoke-virtual {p0, v0}, Lcom/twitter/internal/network/HttpOperation;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/twitter/internal/network/k;->m:Ljava/lang/String;

    .line 348
    invoke-virtual {p0, v0}, Lcom/twitter/internal/network/HttpOperation;->k(Ljava/lang/Object;)Lcom/twitter/internal/network/HttpOperation$Protocol;

    move-result-object v1

    iput-object v1, v6, Lcom/twitter/internal/network/k;->o:Lcom/twitter/internal/network/HttpOperation$Protocol;

    .line 349
    const-string/jumbo v1, "x-served-by"

    const/4 v7, 0x0

    invoke-virtual {p0, v0, v1, v7}, Lcom/twitter/internal/network/HttpOperation;->a(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/twitter/internal/network/k;->q:Ljava/lang/String;

    .line 350
    iget-object v1, v6, Lcom/twitter/internal/network/k;->q:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 351
    const-string/jumbo v1, "server"

    const/4 v7, 0x0

    invoke-virtual {p0, v0, v1, v7}, Lcom/twitter/internal/network/HttpOperation;->a(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/twitter/internal/network/k;->q:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 359
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lcom/twitter/internal/network/HttpOperation;->m(Ljava/lang/Object;)V

    .line 361
    iget-object v1, p0, Lcom/twitter/internal/network/HttpOperation;->b:Lcom/twitter/platform/u;

    invoke-interface {v1}, Lcom/twitter/platform/u;->b()J

    move-result-wide v8

    sub-long v4, v8, v4

    iput-wide v4, v6, Lcom/twitter/internal/network/k;->g:J

    .line 362
    if-eqz v0, :cond_3

    iget-object v1, v6, Lcom/twitter/internal/network/k;->c:Ljava/lang/Exception;

    if-nez v1, :cond_3

    .line 363
    invoke-direct {p0, v6, v0}, Lcom/twitter/internal/network/HttpOperation;->a(Lcom/twitter/internal/network/k;Ljava/lang/Object;)V

    .line 368
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/twitter/internal/network/HttpOperation;->o:Lcom/twitter/internal/network/k;

    iget-wide v4, v2, Lcom/twitter/internal/network/k;->r:J

    invoke-direct {p0, v1, v4, v5}, Lcom/twitter/internal/network/HttpOperation;->a(IJ)V

    .line 369
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/twitter/internal/network/HttpOperation;->b(I)V

    .line 371
    :cond_3
    iget-wide v4, v6, Lcom/twitter/internal/network/k;->g:J

    iget-wide v8, v6, Lcom/twitter/internal/network/k;->f:J

    add-long/2addr v4, v8

    iget-wide v8, v6, Lcom/twitter/internal/network/k;->h:J

    add-long/2addr v4, v8

    iput-wide v4, v6, Lcom/twitter/internal/network/k;->e:J

    .line 374
    iput-boolean v3, p0, Lcom/twitter/internal/network/HttpOperation;->p:Z

    .line 375
    iput-boolean v10, p0, Lcom/twitter/internal/network/HttpOperation;->q:Z

    .line 376
    iput-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->s:Ljava/lang/Object;

    .line 378
    invoke-virtual {v6}, Lcom/twitter/internal/network/k;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 379
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->e:Lcom/twitter/internal/network/i;

    invoke-interface {v0, v6}, Lcom/twitter/internal/network/i;->a(Lcom/twitter/internal/network/k;)V

    .line 383
    :cond_4
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->r:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 384
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->r:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/twitter/internal/network/HttpOperation;->j(Ljava/lang/Object;)V

    .line 387
    :cond_5
    invoke-direct {p0}, Lcom/twitter/internal/network/HttpOperation;->v()V

    .line 388
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/twitter/internal/network/HttpOperation;->b(I)V

    goto/16 :goto_0

    .line 353
    :catch_0
    move-exception v0

    move v2, v3

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    .line 354
    :goto_2
    invoke-direct {p0, v2}, Lcom/twitter/internal/network/HttpOperation;->b(I)V

    .line 355
    instance-of v2, v1, Ljava/io/IOException;

    iput-boolean v2, v6, Lcom/twitter/internal/network/k;->d:Z

    .line 356
    invoke-virtual {p0, v1}, Lcom/twitter/internal/network/HttpOperation;->b(Ljava/lang/Exception;)V

    goto :goto_1

    .line 353
    :catch_1
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method protected abstract d(Ljava/lang/Object;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method public final e()Lorg/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->h:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->c:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    invoke-virtual {v0}, Lcom/twitter/internal/network/HttpOperation$RequestMethod;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->h:Lorg/apache/http/HttpEntity;

    .line 429
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract e(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation
.end method

.method public f()J
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->h:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->h:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected abstract f(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public g()J
    .locals 2

    .prologue
    .line 450
    iget-wide v0, p0, Lcom/twitter/internal/network/HttpOperation;->f:J

    return-wide v0
.end method

.method protected abstract g(Ljava/lang/Object;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method protected abstract h(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public h()Lcom/twitter/internal/network/HttpOperation$RequestMethod;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->c:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    return-object v0
.end method

.method protected abstract i(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public i()Ljava/net/URI;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->d:Ljava/net/URI;

    return-object v0
.end method

.method protected j(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 402
    return-void
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/twitter/internal/network/HttpOperation;->u()V

    .line 499
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->o:Lcom/twitter/internal/network/k;

    iget v0, v0, Lcom/twitter/internal/network/k;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract k(Ljava/lang/Object;)Lcom/twitter/internal/network/HttpOperation$Protocol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lcom/twitter/internal/network/HttpOperation$Protocol;"
        }
    .end annotation
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/twitter/internal/network/HttpOperation;->u()V

    .line 507
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->o:Lcom/twitter/internal/network/k;

    invoke-virtual {v0}, Lcom/twitter/internal/network/k;->a()Z

    move-result v0

    return v0
.end method

.method public l()Lcom/twitter/internal/network/k;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->o:Lcom/twitter/internal/network/k;

    return-object v0
.end method

.method public m()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 553
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 555
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 556
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 559
    :cond_0
    return-object v1
.end method

.method public n()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 572
    invoke-direct {p0}, Lcom/twitter/internal/network/HttpOperation;->u()V

    .line 573
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->s:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->s:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/twitter/internal/network/HttpOperation;->g(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/twitter/internal/network/HttpOperation;->p:Z

    return v0
.end method

.method public p()[Lcom/twitter/internal/network/HttpOperation$Protocol;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->v:[Lcom/twitter/internal/network/HttpOperation$Protocol;

    return-object v0
.end method

.method public q()Lcom/twitter/internal/network/i;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->e:Lcom/twitter/internal/network/i;

    return-object v0
.end method

.method public r()J
    .locals 2

    .prologue
    .line 852
    sget-object v0, Lcom/twitter/internal/network/HttpOperation;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized s()Ljava/util/zip/Inflater;
    .locals 2

    .prologue
    .line 868
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->u:Ljava/util/zip/Inflater;

    if-nez v0, :cond_0

    .line 869
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->u:Ljava/util/zip/Inflater;

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/twitter/internal/network/HttpOperation;->u:Ljava/util/zip/Inflater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 868
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public t()J
    .locals 2

    .prologue
    .line 899
    iget-wide v0, p0, Lcom/twitter/internal/network/HttpOperation;->y:J

    return-wide v0
.end method
