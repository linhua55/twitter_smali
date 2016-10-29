.class Lvd;
.super Lcom/twitter/library/util/y;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/model/core/TwitterUser;

.field final synthetic b:Lvc;


# direct methods
.method constructor <init>(Lvc;Lcom/twitter/model/core/TwitterUser;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lvd;->b:Lvc;

    iput-object p2, p0, Lvd;->a:Lcom/twitter/model/core/TwitterUser;

    invoke-direct {p0}, Lcom/twitter/library/util/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 6

    .prologue
    const v5, 0x7f0a053c

    .line 177
    iget-object v0, p0, Lvd;->b:Lvc;

    invoke-static {v0}, Lvc;->a(Lvc;)Landroid/app/Activity;

    move-result-object v1

    .line 178
    if-eqz v1, :cond_0

    .line 179
    iget-object v0, p0, Lvd;->b:Lvc;

    invoke-virtual {v0}, Lvc;->e()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v2}, Lcom/twitter/library/scribe/NativeCardUserAction;->a(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;I)Lcom/twitter/library/scribe/NativeCardUserAction;

    move-result-object v0

    .line 181
    iget-object v2, p0, Lvd;->b:Lvc;

    invoke-static {v2}, Lvc;->b(Lvc;)Lcom/twitter/android/card/i;

    move-result-object v2

    const-string/jumbo v3, "click"

    iget-object v4, p0, Lvd;->b:Lvc;

    invoke-virtual {v4}, Lvc;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/twitter/android/card/i;->d(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 182
    iget-object v2, p0, Lvd;->b:Lvc;

    invoke-static {v2}, Lvc;->b(Lvc;)Lcom/twitter/android/card/i;

    move-result-object v2

    sget-object v3, Lcom/twitter/library/api/PromotedEvent;->n:Lcom/twitter/library/api/PromotedEvent;

    invoke-interface {v2, v3, v0}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/api/PromotedEvent;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 184
    iget-object v0, p0, Lvd;->b:Lvc;

    invoke-static {v0}, Lvc;->c(Lvc;)Lcom/twitter/library/card/CardContext;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/library/card/CardContext;->a(Lcom/twitter/library/card/CardContext;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    .line 185
    iget-object v2, p0, Lvd;->b:Lvc;

    invoke-static {v2}, Lvc;->d(Lvc;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/twitter/android/dm/w;

    invoke-direct {v3}, Lcom/twitter/android/dm/w;-><init>()V

    new-instance v4, Lcom/twitter/model/core/ay;

    invoke-direct {v4, v0}, Lcom/twitter/model/core/ay;-><init>(Lcom/twitter/model/core/Tweet;)V

    .line 187
    invoke-virtual {v3, v4}, Lcom/twitter/android/dm/w;->a(Lcom/twitter/model/core/ay;)Lcom/twitter/android/dm/w;

    move-result-object v0

    iget-object v3, p0, Lvd;->a:Lcom/twitter/model/core/TwitterUser;

    .line 188
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/twitter/android/dm/w;->a(Ljava/util/List;)Lcom/twitter/android/dm/w;

    move-result-object v0

    iget-object v3, p0, Lvd;->b:Lvc;

    .line 189
    invoke-static {v3}, Lvc;->e(Lvc;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/twitter/android/dm/w;->a(Ljava/lang/String;)Lcom/twitter/android/dm/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dm/w;

    const/4 v3, 0x1

    .line 190
    invoke-virtual {v0, v3}, Lcom/twitter/android/dm/w;->c(Z)Lcom/twitter/android/dm/w;

    move-result-object v0

    .line 191
    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/twitter/android/dm/w;->b(Ljava/lang/String;)Lcom/twitter/android/dm/w;

    move-result-object v0

    .line 192
    invoke-virtual {v0, v5}, Lcom/twitter/android/dm/w;->a(I)Lcom/twitter/android/dm/w;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lcom/twitter/android/dm/w;->d()Lcom/twitter/android/dm/v;

    move-result-object v0

    .line 185
    invoke-static {v2, v0}, Lcom/twitter/android/dm/r;->a(Landroid/content/Context;Lcom/twitter/android/dm/v;)Landroid/content/Intent;

    move-result-object v0

    .line 194
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 196
    :cond_0
    return-void
.end method
