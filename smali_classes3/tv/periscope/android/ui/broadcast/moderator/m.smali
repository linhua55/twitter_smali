.class Ltv/periscope/android/ui/broadcast/moderator/m;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;


# direct methods
.method private constructor <init>(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/moderator/m;->a:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;Ltv/periscope/android/ui/broadcast/moderator/c;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/broadcast/moderator/m;-><init>(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/m;->a:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->a(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 54
    const-string/jumbo v0, "ModeratorView"

    const-string/jumbo v1, "Learn about moderation clicked"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/m;->a:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->b(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Ltv/periscope/android/ui/broadcast/moderator/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/m;->a:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->b(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Ltv/periscope/android/ui/broadcast/moderator/n;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/moderator/n;->x()V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/m;->a:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->c(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/m;->a:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->d(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Ltv/periscope/android/ui/broadcast/moderator/p;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/moderator/p;->a()V

    .line 67
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/m;->a:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->e(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 68
    const-string/jumbo v0, "ModeratorView"

    const-string/jumbo v1, "Negative button clicked"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/m;->a:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->b(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Ltv/periscope/android/ui/broadcast/moderator/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/m;->a:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->b(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Ltv/periscope/android/ui/broadcast/moderator/n;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/moderator/n;->t()V

    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/m;->a:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->f(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 73
    const-string/jumbo v0, "ModeratorView"

    const-string/jumbo v1, "Positive button clicked"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/m;->a:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->b(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Ltv/periscope/android/ui/broadcast/moderator/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/m;->a:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->b(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Ltv/periscope/android/ui/broadcast/moderator/n;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/moderator/n;->s()V

    goto :goto_0

    .line 77
    :cond_3
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/m;->a:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->g(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 78
    const-string/jumbo v0, "ModeratorView"

    const-string/jumbo v1, "Neutral button clicked"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/m;->a:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->b(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Ltv/periscope/android/ui/broadcast/moderator/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/m;->a:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->b(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Ltv/periscope/android/ui/broadcast/moderator/n;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/moderator/n;->u()V

    goto :goto_0

    .line 83
    :cond_4
    const-string/jumbo v0, "ModeratorView"

    const-string/jumbo v1, "Undefined button clicked"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
