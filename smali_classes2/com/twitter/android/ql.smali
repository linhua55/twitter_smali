.class Lcom/twitter/android/ql;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/qk;


# direct methods
.method constructor <init>(Lcom/twitter/android/qk;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/twitter/android/ql;->a:Lcom/twitter/android/qk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/qq;

    .line 103
    instance-of v1, p1, Lcom/twitter/library/widget/UserView;

    if-eqz v1, :cond_0

    .line 104
    check-cast p1, Lcom/twitter/library/widget/UserView;

    .line 105
    iget-object v1, p1, Lcom/twitter/library/widget/UserView;->s:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->toggle()V

    .line 106
    iget-object v0, v0, Lcom/twitter/android/qq;->b:Lcom/twitter/android/xy;

    .line 107
    if-eqz v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/twitter/android/ql;->a:Lcom/twitter/android/qk;

    iget-wide v2, v0, Lcom/twitter/android/xy;->e:J

    invoke-static {v1, p1, v2, v3}, Lcom/twitter/android/qk;->a(Lcom/twitter/android/qk;Lcom/twitter/library/widget/UserView;J)V

    .line 111
    :cond_0
    return-void
.end method
