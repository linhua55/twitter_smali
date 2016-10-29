.class public Lcom/facebook/imagepipeline/decoder/a;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Ldd;

.field private final b:Lcom/facebook/imagepipeline/bitmaps/g;


# direct methods
.method public constructor <init>(Ldd;Lcom/facebook/imagepipeline/bitmaps/g;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/facebook/imagepipeline/decoder/a;->a:Ldd;

    .line 54
    iput-object p2, p0, Lcom/facebook/imagepipeline/decoder/a;->b:Lcom/facebook/imagepipeline/bitmaps/g;

    .line 55
    return-void
.end method


# virtual methods
.method public a(Lfo;ILfr;Lcom/facebook/imagepipeline/common/a;)Lfm;
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p1}, Lfo;->e()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->j:Lcom/facebook/imageformat/ImageFormat;

    if-ne v0, v1, :cond_1

    .line 73
    :cond_0
    invoke-virtual {p1}, Lfo;->d()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imageformat/b;->b(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    .line 77
    :cond_1
    sget-object v1, Lcom/facebook/imagepipeline/decoder/b;->a:[I

    invoke-virtual {v0}, Lcom/facebook/imageformat/ImageFormat;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 91
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/decoder/a;->a(Lfo;)Lfn;

    move-result-object v0

    :goto_0
    return-object v0

    .line 79
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown image format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/decoder/a;->a(Lfo;ILfr;)Lfn;

    move-result-object v0

    goto :goto_0

    .line 85
    :pswitch_2
    invoke-virtual {p0, p1, p4}, Lcom/facebook/imagepipeline/decoder/a;->a(Lfo;Lcom/facebook/imagepipeline/common/a;)Lfm;

    move-result-object v0

    goto :goto_0

    .line 88
    :pswitch_3
    invoke-virtual {p0, p1, p4}, Lcom/facebook/imagepipeline/decoder/a;->b(Lfo;Lcom/facebook/imagepipeline/common/a;)Lfm;

    move-result-object v0

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Lfo;Lcom/facebook/imagepipeline/common/a;)Lfm;
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p1}, Lfo;->d()Ljava/io/InputStream;

    move-result-object v1

    .line 105
    if-nez v1, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 114
    :goto_0
    return-object v0

    .line 109
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/facebook/imageformat/a;->a(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/a;->a:Ldd;

    invoke-virtual {v0, p1, p2}, Ldd;->a(Lfo;Lcom/facebook/imagepipeline/common/a;)Lfm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 114
    invoke-static {v1}, Lbb;->a(Ljava/io/InputStream;)V

    goto :goto_0

    .line 112
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/decoder/a;->a(Lfo;)Lfn;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 114
    invoke-static {v1}, Lbb;->a(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lbb;->a(Ljava/io/InputStream;)V

    throw v0
.end method

.method public a(Lfo;)Lfn;
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/a;->b:Lcom/facebook/imagepipeline/bitmaps/g;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/bitmaps/g;->a(Lfo;)Lcom/facebook/common/references/a;

    move-result-object v1

    .line 127
    :try_start_0
    new-instance v0, Lfn;

    sget-object v2, Lfq;->a:Lfr;

    invoke-virtual {p1}, Lfo;->f()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lfn;-><init>(Lcom/facebook/common/references/a;Lfr;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-virtual {v1}, Lcom/facebook/common/references/a;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/facebook/common/references/a;->close()V

    throw v0
.end method

.method public a(Lfo;ILfr;)Lfn;
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/a;->b:Lcom/facebook/imagepipeline/bitmaps/g;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/bitmaps/g;->a(Lfo;I)Lcom/facebook/common/references/a;

    move-result-object v1

    .line 151
    :try_start_0
    new-instance v0, Lfn;

    invoke-virtual {p1}, Lfo;->f()I

    move-result v2

    invoke-direct {v0, v1, p3, v2}, Lfn;-><init>(Lcom/facebook/common/references/a;Lfr;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-virtual {v1}, Lcom/facebook/common/references/a;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/facebook/common/references/a;->close()V

    throw v0
.end method

.method public b(Lfo;Lcom/facebook/imagepipeline/common/a;)Lfm;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/a;->a:Ldd;

    invoke-virtual {v0, p1, p2}, Ldd;->b(Lfo;Lcom/facebook/imagepipeline/common/a;)Lfm;

    move-result-object v0

    return-object v0
.end method
