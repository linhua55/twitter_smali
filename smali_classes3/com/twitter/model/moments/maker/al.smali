.class public Lcom/twitter/model/moments/maker/al;
.super Lcom/twitter/model/moments/maker/w;
.source "Twttr"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Lcom/twitter/media/model/MediaType;

.field public final c:Lcom/twitter/util/math/Size;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/twitter/media/model/MediaType;Lcom/twitter/util/math/Size;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/twitter/model/moments/maker/w;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/twitter/model/moments/maker/al;->a:Landroid/net/Uri;

    .line 26
    iput-object p2, p0, Lcom/twitter/model/moments/maker/al;->b:Lcom/twitter/media/model/MediaType;

    .line 27
    iput-object p3, p0, Lcom/twitter/model/moments/maker/al;->c:Lcom/twitter/util/math/Size;

    .line 28
    return-void
.end method
