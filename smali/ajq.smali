.class Lajq;
.super Landroid/text/style/ClickableSpan;
.source "Twttr"


# instance fields
.field final synthetic a:I

.field final synthetic b:Lajp;


# direct methods
.method constructor <init>(Lajp;I)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lajq;->b:Lajp;

    iput p2, p0, Lajq;->a:I

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lajq;->b:Lajp;

    invoke-static {v0}, Lajp;->a(Lajp;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lajq;->b:Lajp;

    invoke-static {v0}, Lajp;->a(Lajp;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 101
    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 107
    iget v0, p0, Lajq;->a:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 108
    return-void
.end method
