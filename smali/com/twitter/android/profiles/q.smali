.class public Lcom/twitter/android/profiles/q;
.super Lcom/twitter/android/profiles/ar;
.source "Twttr"


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private final l:Z


# direct methods
.method public constructor <init>(Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/core/TwitterUser;IZLcom/twitter/model/ads/e;ZLcom/twitter/android/moments/ui/maker/cd;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Lcom/twitter/android/profiles/ar;-><init>()V

    .line 50
    invoke-static {p4, p3}, Lcom/twitter/android/profiles/as;->a(ZI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/profiles/q;->a:Z

    .line 51
    invoke-static {p3}, Lcom/twitter/model/core/p;->e(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/profiles/q;->b:Z

    .line 52
    invoke-static {p3}, Lcom/twitter/model/core/p;->d(I)Z

    move-result v3

    .line 53
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/profiles/q;->b:Z

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/profiles/q;->d:Z

    .line 54
    if-eqz p2, :cond_1

    iget v0, p2, Lcom/twitter/model/core/TwitterUser;->K:I

    invoke-static {v0}, Lcom/twitter/model/core/dd;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p4, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/twitter/android/profiles/q;->e:Z

    .line 55
    if-eqz p2, :cond_2

    if-eqz p4, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/twitter/android/profiles/q;->f:Z

    .line 56
    if-eqz p2, :cond_3

    .line 57
    invoke-static {p4, p2, p3}, Lcom/twitter/android/profiles/as;->a(ZLcom/twitter/model/core/TwitterUser;I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/twitter/android/profiles/q;->g:Z

    .line 58
    if-eqz p2, :cond_4

    invoke-static {p3}, Lcom/twitter/model/core/p;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v3, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/twitter/android/profiles/q;->h:Z

    .line 59
    invoke-static {p3}, Lcom/twitter/model/core/p;->g(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/profiles/q;->c:Z

    .line 60
    if-eqz p2, :cond_5

    if-nez p4, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/twitter/android/profiles/q;->i:Z

    .line 61
    if-eqz p2, :cond_6

    invoke-static {p2, p3, p4}, Lcom/twitter/android/profiles/as;->b(Lcom/twitter/model/core/TwitterUser;IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_6
    iput-boolean v1, p0, Lcom/twitter/android/profiles/q;->j:Z

    .line 62
    invoke-static {p1, p2, p5, p6}, Lcom/twitter/android/ads/c;->b(Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/ads/e;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/profiles/q;->k:Z

    .line 64
    invoke-virtual {p7}, Lcom/twitter/android/moments/ui/maker/cd;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/profiles/q;->l:Z

    .line 65
    return-void

    :cond_0
    move v0, v2

    .line 53
    goto :goto_0

    :cond_1
    move v0, v2

    .line 54
    goto :goto_1

    :cond_2
    move v0, v2

    .line 55
    goto :goto_2

    :cond_3
    move v0, v2

    .line 57
    goto :goto_3

    :cond_4
    move v0, v2

    .line 58
    goto :goto_4

    :cond_5
    move v0, v2

    .line 60
    goto :goto_5

    :cond_6
    move v1, v2

    .line 61
    goto :goto_6
.end method


# virtual methods
.method public a(Lcom/twitter/internal/android/widget/ToolBar;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    const v0, 0x7f1307ea

    invoke-virtual {p1, v0}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v0

    iget-boolean v3, p0, Lcom/twitter/android/profiles/q;->j:Z

    invoke-virtual {v0, v3}, Lbjl;->b(Z)Lbjl;

    .line 70
    const v0, 0x7f1307fa

    invoke-virtual {p1, v0}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v3

    iget-boolean v0, p0, Lcom/twitter/android/profiles/q;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/profiles/q;->a:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lbjl;->b(Z)Lbjl;

    .line 71
    const v0, 0x7f1307fb

    invoke-virtual {p1, v0}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v3

    iget-boolean v0, p0, Lcom/twitter/android/profiles/q;->g:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/twitter/android/profiles/q;->a:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lbjl;->b(Z)Lbjl;

    .line 72
    const v0, 0x7f1307f7

    invoke-virtual {p1, v0}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v3

    iget-boolean v0, p0, Lcom/twitter/android/profiles/q;->h:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/twitter/android/profiles/q;->c:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/twitter/android/profiles/q;->a:Z

    if-nez v0, :cond_2

    move v0, v1

    .line 73
    :goto_2
    invoke-virtual {v3, v0}, Lbjl;->b(Z)Lbjl;

    .line 74
    const v0, 0x7f1307f8

    invoke-virtual {p1, v0}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v3

    iget-boolean v0, p0, Lcom/twitter/android/profiles/q;->h:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/twitter/android/profiles/q;->c:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/twitter/android/profiles/q;->a:Z

    if-nez v0, :cond_3

    move v0, v1

    .line 75
    :goto_3
    invoke-virtual {v3, v0}, Lbjl;->b(Z)Lbjl;

    .line 76
    const v0, 0x7f1307fe

    invoke-virtual {p1, v0}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v3

    iget-boolean v0, p0, Lcom/twitter/android/profiles/q;->e:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/twitter/android/profiles/q;->b:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Lbjl;->b(Z)Lbjl;

    .line 77
    const v0, 0x7f1307f9

    invoke-virtual {p1, v0}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v0

    iget-boolean v3, p0, Lcom/twitter/android/profiles/q;->f:Z

    invoke-virtual {v0, v3}, Lbjl;->b(Z)Lbjl;

    .line 78
    const v0, 0x7f1307c0

    invoke-virtual {p1, v0}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v0

    iget-boolean v3, p0, Lcom/twitter/android/profiles/q;->e:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/twitter/android/profiles/q;->b:Z

    if-nez v3, :cond_5

    :goto_5
    invoke-virtual {v0, v1}, Lbjl;->b(Z)Lbjl;

    .line 79
    const v0, 0x7f1307ff

    invoke-virtual {p1, v0}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/android/profiles/q;->i:Z

    invoke-virtual {v0, v1}, Lbjl;->b(Z)Lbjl;

    .line 80
    const v0, 0x7f130800

    invoke-virtual {p1, v0}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/android/profiles/q;->k:Z

    invoke-virtual {v0, v1}, Lbjl;->b(Z)Lbjl;

    .line 81
    const v0, 0x7f1307fc

    invoke-virtual {p1, v0}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/android/profiles/q;->l:Z

    invoke-virtual {v0, v1}, Lbjl;->b(Z)Lbjl;

    .line 82
    return-void

    :cond_0
    move v0, v2

    .line 70
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 71
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 72
    goto :goto_2

    :cond_3
    move v0, v2

    .line 74
    goto :goto_3

    :cond_4
    move v0, v2

    .line 76
    goto :goto_4

    :cond_5
    move v1, v2

    .line 78
    goto :goto_5
.end method
