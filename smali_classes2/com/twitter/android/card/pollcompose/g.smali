.class public Lcom/twitter/android/card/pollcompose/g;
.super Lcom/twitter/android/widget/ec;
.source "Twttr"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/twitter/android/widget/ec;-><init>(I)V

    .line 286
    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/android/card/pollcompose/AddImagePollActivity$ImagePickerSelectDialog;
    .locals 1

    .prologue
    .line 291
    new-instance v0, Lcom/twitter/android/card/pollcompose/AddImagePollActivity$ImagePickerSelectDialog;

    invoke-direct {v0}, Lcom/twitter/android/card/pollcompose/AddImagePollActivity$ImagePickerSelectDialog;-><init>()V

    return-object v0
.end method

.method protected synthetic b()Lcom/twitter/android/widget/PromptDialogFragment;
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/twitter/android/card/pollcompose/g;->a()Lcom/twitter/android/card/pollcompose/AddImagePollActivity$ImagePickerSelectDialog;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c()Lcom/twitter/app/common/base/BaseDialogFragment;
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/twitter/android/card/pollcompose/g;->a()Lcom/twitter/android/card/pollcompose/AddImagePollActivity$ImagePickerSelectDialog;

    move-result-object v0

    return-object v0
.end method
