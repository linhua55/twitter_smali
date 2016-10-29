.class public Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/d;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:Z

.field private b:Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/d;->a:Z

    .line 1211
    sget-object v0, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;->a:Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/d;->b:Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser;
    .locals 4

    .prologue
    .line 1223
    new-instance v0, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser;

    iget-boolean v1, p0, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/d;->a:Z

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/d;->b:Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser;-><init>(ZLcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/c;)V

    return-object v0
.end method
