.class Lcom/twitter/android/util/ag;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/internal/android/widget/ToolBar;

.field final synthetic b:Lcom/twitter/android/client/t;

.field final synthetic c:Lcom/twitter/android/util/af;


# direct methods
.method constructor <init>(Lcom/twitter/android/util/af;Lcom/twitter/internal/android/widget/ToolBar;Lcom/twitter/android/client/t;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/twitter/android/util/ag;->c:Lcom/twitter/android/util/af;

    iput-object p2, p0, Lcom/twitter/android/util/ag;->a:Lcom/twitter/internal/android/widget/ToolBar;

    iput-object p3, p0, Lcom/twitter/android/util/ag;->b:Lcom/twitter/android/client/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 179
    iget-object v0, p0, Lcom/twitter/android/util/ag;->a:Lcom/twitter/internal/android/widget/ToolBar;

    const v1, 0x7f1306fb

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbjl;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/twitter/android/util/ag;->b:Lcom/twitter/android/client/t;

    const-string/jumbo v1, "highlights_tooltip_overflow"

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/t;->a(Ljava/lang/String;)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/util/ag;->a:Lcom/twitter/internal/android/widget/ToolBar;

    const v1, 0x7f1306ff

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbjl;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/twitter/android/util/ag;->b:Lcom/twitter/android/client/t;

    iget-object v1, p0, Lcom/twitter/android/util/ag;->c:Lcom/twitter/android/util/af;

    .line 188
    invoke-static {v1}, Lcom/twitter/android/util/af;->a(Lcom/twitter/android/util/af;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/twitter/android/news/n;->g(J)Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Lcom/twitter/android/client/t;->a(Ljava/lang/String;)V

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/util/ag;->a:Lcom/twitter/internal/android/widget/ToolBar;

    const v1, 0x7f1307df

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lbjl;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/twitter/android/util/ag;->b:Lcom/twitter/android/client/t;

    const-string/jumbo v1, "dm_tooltip"

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/t;->a(Ljava/lang/String;)V

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/util/ag;->a:Lcom/twitter/internal/android/widget/ToolBar;

    const v1, 0x7f1307dc

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lbjl;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    iget-object v0, p0, Lcom/twitter/android/util/ag;->b:Lcom/twitter/android/client/t;

    const-string/jumbo v1, "connect_tooltip_drawe"

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/t;->a(Ljava/lang/String;)V

    .line 201
    :cond_3
    return-void
.end method
