.class public Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Z

.field private final b:Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;


# direct methods
.method private constructor <init>(ZLcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;)V
    .locals 0

    .prologue
    .line 1194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1195
    iput-boolean p1, p0, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser;->a:Z

    .line 1196
    iput-object p2, p0, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser;->b:Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    .line 1197
    return-void
.end method

.method synthetic constructor <init>(ZLcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/c;)V
    .locals 0

    .prologue
    .line 1171
    invoke-direct {p0, p1, p2}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser;-><init>(ZLcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;)V

    return-void
.end method

.method public static a()Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/d;
    .locals 1

    .prologue
    .line 1203
    new-instance v0, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/d;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/d;-><init>()V

    return-object v0
.end method
