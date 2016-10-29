.class Laak;
.super Lcom/twitter/library/av/u;
.source "Twttr"


# instance fields
.field final synthetic a:Lcwb;

.field final synthetic b:Lzw;

.field final synthetic c:Laaj;


# direct methods
.method constructor <init>(Laaj;Lcwb;Lzw;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Laak;->c:Laaj;

    iput-object p2, p0, Laak;->a:Lcwb;

    iput-object p3, p0, Laak;->b:Lzw;

    invoke-direct {p0}, Lcom/twitter/library/av/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIZZ)V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Laak;->c:Laaj;

    iget-object v1, p0, Laak;->c:Laaj;

    iget-object v1, v1, Laaj;->f:Laab;

    iget-object v2, p0, Laak;->a:Lcwb;

    iget-object v3, p0, Laak;->b:Lzw;

    invoke-static {v0, v1, v2, v3}, Laaj;->a(Laaj;Laab;Lcwb;Lzw;)V

    .line 110
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Laak;->c:Laaj;

    iget-object v1, p0, Laak;->c:Laaj;

    iget-object v1, v1, Laaj;->f:Laab;

    iget-object v2, p0, Laak;->a:Lcwb;

    iget-object v3, p0, Laak;->b:Lzw;

    invoke-static {v0, v1, v2, v3}, Laaj;->a(Laaj;Laab;Lcwb;Lzw;)V

    .line 115
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Laak;->c:Laaj;

    iget-object v1, p0, Laak;->c:Laaj;

    iget-object v1, v1, Laaj;->f:Laab;

    iget-object v2, p0, Laak;->a:Lcwb;

    iget-object v3, p0, Laak;->b:Lzw;

    invoke-static {v0, v1, v2, v3}, Laaj;->a(Laaj;Laab;Lcwb;Lzw;)V

    .line 120
    return-void
.end method
