.class Lcom/twitter/android/moments/ui/fullscreen/el;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/widget/av;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/ei;

.field private final b:Lcom/twitter/model/core/Tweet;

.field private final c:Lcom/twitter/util/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/ei;Lcom/twitter/model/core/Tweet;Lcom/twitter/util/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/core/Tweet;",
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/el;->a:Lcom/twitter/android/moments/ui/fullscreen/ei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/el;->b:Lcom/twitter/model/core/Tweet;

    .line 180
    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/el;->c:Lcom/twitter/util/x;

    .line 181
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/el;->b:Lcom/twitter/model/core/Tweet;

    iput-boolean p1, v0, Lcom/twitter/model/core/Tweet;->a:Z

    .line 186
    if-eqz p1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/el;->b:Lcom/twitter/model/core/Tweet;

    iget v1, v0, Lcom/twitter/model/core/Tweet;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/twitter/model/core/Tweet;->k:I

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/el;->c:Lcom/twitter/util/x;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/el;->b:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0, v1}, Lcom/twitter/util/x;->a(Ljava/lang/Object;)V

    .line 192
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/el;->b:Lcom/twitter/model/core/Tweet;

    iget v1, v0, Lcom/twitter/model/core/Tweet;->k:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/twitter/model/core/Tweet;->k:I

    goto :goto_0
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 196
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/el;->b:Lcom/twitter/model/core/Tweet;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/twitter/model/core/Tweet;->c:Z

    .line 197
    if-nez p1, :cond_1

    .line 198
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/el;->b:Lcom/twitter/model/core/Tweet;

    iget v1, v0, Lcom/twitter/model/core/Tweet;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/twitter/model/core/Tweet;->h:I

    .line 202
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/el;->c:Lcom/twitter/util/x;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/el;->b:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0, v1}, Lcom/twitter/util/x;->a(Ljava/lang/Object;)V

    .line 203
    return-void

    .line 196
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/el;->b:Lcom/twitter/model/core/Tweet;

    iget v1, v0, Lcom/twitter/model/core/Tweet;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/twitter/model/core/Tweet;->h:I

    goto :goto_1
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public d(Z)V
    .locals 4

    .prologue
    .line 211
    if-eqz p1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/el;->a:Lcom/twitter/android/moments/ui/fullscreen/ei;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/ei;->d(Lcom/twitter/android/moments/ui/fullscreen/ei;)Lcom/twitter/android/moments/ui/fullscreen/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/el;->a:Lcom/twitter/android/moments/ui/fullscreen/ei;

    invoke-static {v1}, Lcom/twitter/android/moments/ui/fullscreen/ei;->e(Lcom/twitter/android/moments/ui/fullscreen/ei;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/moments/ui/fullscreen/aq;->a(J)V

    .line 214
    :cond_0
    return-void
.end method
