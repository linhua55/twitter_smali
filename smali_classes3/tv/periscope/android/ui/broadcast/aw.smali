.class Ltv/periscope/android/ui/broadcast/aw;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/broadcast/ChatComposer;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/broadcast/ChatComposer;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/aw;->a:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 180
    sget-object v0, Ltv/periscope/android/ui/broadcast/ba;->b:[I

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/aw;->a:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcast/ChatComposer;->d(Ltv/periscope/android/ui/broadcast/ChatComposer;)Ltv/periscope/android/ui/broadcast/ChatComposer$ComposeState;

    move-result-object v1

    invoke-virtual {v1}, Ltv/periscope/android/ui/broadcast/ChatComposer$ComposeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 182
    :pswitch_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/aw;->a:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->e(Ltv/periscope/android/ui/broadcast/ChatComposer;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    .line 186
    :pswitch_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/aw;->a:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->e(Ltv/periscope/android/ui/broadcast/ChatComposer;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 188
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/aw;->a:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcast/ChatComposer;->f(Ltv/periscope/android/ui/broadcast/ChatComposer;)Ltv/periscope/android/ui/chat/ar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 189
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/aw;->a:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcast/ChatComposer;->f(Ltv/periscope/android/ui/broadcast/ChatComposer;)Ltv/periscope/android/ui/chat/ar;

    move-result-object v1

    invoke-interface {v1, v0}, Ltv/periscope/android/ui/chat/ar;->a(Ljava/lang/String;)V

    .line 191
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/aw;->a:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->e(Ltv/periscope/android/ui/broadcast/ChatComposer;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
