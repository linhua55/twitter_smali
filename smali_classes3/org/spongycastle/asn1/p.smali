.class Lorg/spongycastle/asn1/p;
.super Lorg/spongycastle/asn1/o;
.source "Twttr"


# instance fields
.field final synthetic a:Lorg/spongycastle/asn1/o;

.field private b:Z


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/o;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 177
    iput-object p1, p0, Lorg/spongycastle/asn1/p;->a:Lorg/spongycastle/asn1/o;

    .line 178
    invoke-direct {p0, p2}, Lorg/spongycastle/asn1/o;-><init>(Ljava/io/OutputStream;)V

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/asn1/p;->b:Z

    .line 179
    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    iget-boolean v0, p0, Lorg/spongycastle/asn1/p;->b:Z

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/p;->b:Z

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-super {p0, p1}, Lorg/spongycastle/asn1/o;->b(I)V

    goto :goto_0
.end method
